import { BooleanLike } from 'common/react';
import { Fragment } from 'inferno';
import { useBackend } from '../backend';
import { Box, Button, LabeledList, Section } from '../components';
import { Window } from '../layouts';

type Data = {
  suffix: string;
  power: BooleanLike;
  load: string;
  locked: BooleanLike;
  issilicon: BooleanLike;
  auto_return: BooleanLike;
  crates_only: BooleanLike;
  hatch: BooleanLike;
  safety: BooleanLike;
};

export const MuleBot = (props) => {
  const { act, data } = useBackend<Data>();
  const { suffix, load, hatch } = data;
  return (
    <Window width={350} height={500}>
      <Window.Content>
        <Section title="Multiple Utility Load Effector Mk. III">
          <LabeledList>
            <LabeledList.Item label="ID">{suffix}</LabeledList.Item>
            <LabeledList.Item
              label="Current Load"
              buttons={
                <Button
                  icon="eject"
                  content="Unload Now"
                  disabled={!load}
                  onClick={() => act('unload')}
                />
              }>
              {load ? load : 'None.'}
            </LabeledList.Item>
          </LabeledList>
          {hatch ? <MuleBotOpen /> : <MuleBotClosed />}
        </Section>
      </Window.Content>
    </Window>
  );
};

const MuleBotClosed = (props) => {
  const { act, data } = useBackend<Data>();
  const { power, locked, issilicon, auto_return, crates_only } = data;

  return (
    <Section
      title="Controls"
      buttons={
        <Button
          icon="power-off"
          content={power ? 'On' : 'Off'}
          selected={power}
          disabled={locked && !issilicon}
          onClick={() => act('power')}
        />
      }>
      {locked && !issilicon ? (
        <Box color="bad">This interface is currently locked.</Box>
      ) : (
        <Fragment>
          <Button
            fluid
            icon="stop"
            content="Stop"
            onClick={() => act('stop')}
          />
          <Button
            fluid
            icon="truck-monster"
            content="Proceed"
            onClick={() => act('go')}
          />
          <Button
            fluid
            icon="home"
            content="Return Home"
            onClick={() => act('home')}
          />
          <Button
            fluid
            icon="map-marker-alt"
            content="Set Destination"
            onClick={() => act('destination')}
          />
          <Button
            fluid
            icon="cog"
            content="Set Home"
            onClick={() => act('sethome')}
          />
          <Button
            fluid
            icon="home"
            selected={auto_return}
            content={
              'Auto Return Home: ' + (auto_return ? 'Enabled' : 'Disabled')
            }
            onClick={() => act('autoret')}
          />
          <Button
            fluid
            icon="biking"
            selected={!crates_only}
            content={
              'Non-standard Cargo: ' + (crates_only ? 'Disabled' : 'Enabled')
            }
            onClick={() => act('cargotypes')}
          />
        </Fragment>
      )}
    </Section>
  );
};

const MuleBotOpen = (props) => {
  const { act, data } = useBackend<Data>();
  const { safety } = data;

  return (
    <Section title="Maintenance Panel">
      <Button
        fluid
        icon="skull-crossbones"
        color={safety ? 'green' : 'red'}
        content={'Safety: ' + (safety ? 'Engaged' : 'Disengaged (DANGER)')}
        onClick={() => act('safety')}
      />
    </Section>
  );
};

import React, { FC } from 'react';
import styled from 'styled-components';
import { ReactComponent as MstableIcon } from '../../icons/mstable_horizontal.svg';
import { ReactComponent as MusdIcon } from '../../icons/musd_logo.svg';
import { ReactComponent as BtcIcon } from '../../icons/btc_logo.svg';
import { useSetSelectedMasset } from '../../../context/MassetsProvider';
import { UnstyledButton } from '../../core/Button';

const Container = styled.div`
  display: flex;
  height: 100%;
  width: 100%;
  flex-direction: column;
  justify-content: center;
  align-items: center;
`;

const IconContainer = styled.div`
  border: 4px solid rgba(255, 255, 255, 0.25);
  border-radius: 50%;
  justify-content: center;
  display: flex;
  align-items: center;
  margin-bottom: 2rem;
  width: 6.5rem;
  height: 6.5rem;
  svg {
    height: 2.5rem;
    width: 2.5rem;
  }
`;

const MassetsContainer = styled.div`
  display: flex;
  justify-content: space-between;
  max-width: 100%;
`;

const Musd = styled(UnstyledButton)`
  flex: 1 1 auto;
  margin: 1rem;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  background: ${({ theme }) => theme.color.blue};
  width: 18rem;
  height: 14rem;
  border-radius: 32px;
  cursor: pointer;
  span {
    font-family: Poppins;
    font-style: normal;
    font-weight: bold;
    font-size: 32px;
    color: #ffffff;
  }
  border: 10px solid #e3efff;
`;

const Mbtc = styled(Musd)`
  background: ${({ theme }) => theme.color.gold};
  border: 10px solid #ffedd1;
`;

export const Home: FC = () => {
  const selectMasset = useSetSelectedMasset();
  return (
    <Container>
      <MstableIcon />
      <MassetsContainer>
        <Musd onClick={() => selectMasset('mUSD')}>
          <IconContainer>
            <MusdIcon />
          </IconContainer>
          <span>mUSD</span>
        </Musd>
        <Mbtc onClick={() => selectMasset('mUSD')}>
          <IconContainer>
            <BtcIcon />
          </IconContainer>
          <span>mBTC</span>
        </Mbtc>
      </MassetsContainer>
    </Container>
  );
};

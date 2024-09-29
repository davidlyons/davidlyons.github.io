import { Canvas } from '@react-three/fiber';
import { NoToneMapping } from 'three';

import { useMemo, useRef } from 'react';
import { useFrame } from '@react-three/fiber';
import { IcosahedronGeometry, Group } from 'three';

const Scene = () => {
  const geo = useMemo(() => new IcosahedronGeometry(0.8), []);
  const ref = useRef<Group>(null!);

  useFrame((state, delta) => {
    ref.current.rotation.x += 0.5 * delta;
    ref.current.rotation.y += 0.6 * delta;
  });

  return (
    <group rotation={[Math.PI / 4, Math.PI / 4, 0]} ref={ref}>
      <mesh geometry={geo}>
        <meshBasicMaterial color={0x555555} wireframe />
      </mesh>
      <mesh geometry={geo}>
        <meshBasicMaterial color={0x333333} />
      </mesh>
    </group>
  );
};

const HeaderCanvas = () => (
  <div className="absolute left-1/2 top-1/2 h-20 w-20 -translate-x-1/2 -translate-y-1/2">
    <Canvas
      gl={{ antialias: true, toneMapping: NoToneMapping }}
      camera={{ fov: 60, position: [0, 0, 2.4] }}
    >
      <Scene />
    </Canvas>
  </div>
);

export default HeaderCanvas;

spawn_formation(Enemy01, 0, 600, 5000, formation.f8)
spawn_formation(Enemy01, 1200, 600, 5000, formation.f8)

spawn_formation(Enemy01, 220, 250, 5000, formation.v)

spawn_enemy(EnemyGround01, 500, scene.ground - 64, 5000, 0);
spawn_enemy(EnemyGround01, 700, scene.ground - 64, 5000, 0);

spawn_cluster_3();
spawn_building(4,10,10,Cube01, 200, -1,5000, sBuilding04c);
spawn_building(2,2,3,Cube01, 340, -1,5200, sBuilding01c);
spawn_building(6,6,2,Cube01, 640, -1,5500, sBuilding05c);
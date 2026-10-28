# Microduck 외형 커스텀 프레임 V0.1

## 이 패키지의 기준
- 외형: Pollen Robotics의 공개 Microduck 시뮬레이션 메시를 출처로 삼아 비율을 유지했습니다.
- 내부 기준 부품: FEETECH STS3215-C001 다리 서보 10개, 머리용 SG90 1개, 외부 충전 가능한 배터리 구성.
- 크기: 원본 메시의 미터 단위를 mm로 바꾸고 **1.56배 확대**했습니다. 공식 Microduck 높이 250 mm 기준으로 약 390 mm 크기입니다.
- 원본 형상 크기: 각 원본 STL의 bounds를 확인했습니다. 출력 파일은 mm 단위로 저장했습니다.

## 중요: 이 버전이 포함하는 것
- `STL/`: Microduck 시뮬레이션 메시에서 파생한 출력 부품(외장과 구조 참고 형상).
- `CUSTOM_PARTS/STS3215_C001_mount_adapter_M2_to_M3.stl`: C001 공식 치수도에 표시된 서보의 코너 M2 장착 패턴을 받는 어댑터판. 프레임 쪽에는 M3 체결 구멍이 있습니다.
- `CUSTOM_PARTS/battery_tray_105x33x25.stl` 및 뚜껑: 105×33×25 mm 배터리 팩을 위한 시험 장착 트레이와 뚜껑. 전선과 충전 커넥터 여유는 실제 배선 후 확인해야 합니다.
- `FIT_REFERENCE/STS3215_C001_envelope_DO_NOT_PRINT.stl`: 서보 외곽 치수 확인용 더미. 출력 부품이 아닙니다.

## 조립 관련 제한
- 원본 STL은 공개 시뮬레이션/시각 메시이며 원본 Microduck 제조용 CAD/조립 도면이 아닙니다. 외장 모양 참조로는 적합하지만, 모든 원본 프레임 구멍이 STS3215에 직접 맞는다고 보장하지 않습니다.
- 확대된 원본 프레임을 서보에 바로 조립하기 전에 어댑터판이 연결될 링크의 실제 구멍 위치를 확인해야 합니다. 이 패키지는 장착 인터페이스 샘플과 외장/기준 프레임 부품을 제공합니다. 보행 하중을 받는 전체 관절 연결부는 실물 서보·혼·나사 규격과 대조해 최종화해야 합니다.
- 앞서 선택한 C001은 공식 제조사 페이지에서 STEP/3D CAD를 제공하지 않고, 제조사 치수도는 외형과 M2 코너 고정 패턴을 제시합니다. 서보 고정 구멍 위치는 그 도면을 따라 어댑터판에 반영했습니다.
- 원본 Microduck 외형 메시를 1.56배 확대한 것이므로 **25 cm 제품 크기 그대로는 아닙니다**. 10개의 55 g 서보를 유지하면서 같은 실루엣을 원하면 확대가 필요합니다.
- 먼저 작은 부품으로 시험 출력하고, 배터리 트레이 및 프레임은 실제 부품과 맞춰본 뒤 본 출력하세요. 프린터별 수축/공차를 반영할 수 있도록 M3 체결홀은 출력 후 확인이 필요합니다.

## 부품 그룹
1. 머리/얼굴: top_head_shell, bottom_head_shell, face_part, jaw, jaw_soft, soft_mouth_top, eye/lens detail.
2. 몸통: left_shell, right_shell, trunk_base.
3. 다리/발: upper_leg 좌우, leg, ankle 좌우, foot 좌우, sole 좌우, hip/roll brackets.
4. 목: neck, neck_pitch.
5. 커스텀 추가: STS3215 adapter plate, battery tray and lid.

## 인쇄 권장 시작점
- 외장: PLA, 0.2 mm 층 높이, 3 walls, 15–20% infill.
- 구조 링크/서보 지지: PETG 또는 PLA+, 0.2 mm 층 높이, 4 walls, 35–50% infill. 고하중 관절은 소재/방향/체결부를 실물 시험 후 확정.
- 발 밑창: TPU로 별도 제작하거나 미끄럼 방지 고무 패드를 부착.
- supports: slicer에서 각 부품의 서포트 필요 여부를 개별 확인.

## 라이선스와 출처
원본 메시: Pollen Robotics, `pollen-robotics/microduck_rl`, `src/mjlab_microduck/robot/microduck/assets/*.stl`.
모델 파일 라이선스: CC BY-NC-SA 4.0. 본 패키지의 해당 파생 메시도 비상업적 사용 조건이며, 재배포 시 출처와 동일 라이선스 표시가 필요합니다.
출처: https://github.com/pollen-robotics/microduck_rl
라이선스: https://github.com/pollen-robotics/microduck_rl/blob/develop/LICENSE-MODELS.md
서보 치수도: https://ftservo.github.io/ftservo-wiki/products/models/st-3215-c001/main/

## 제작 상태
이것은 실제 구매 부품에 맞춰 시작할 수 있도록 만든 **V0.1 출력/끼움 확인 패키지**입니다. 프린터 출력물과 실제 서보를 대조하는 조립 검증까지 완료한 양산 확정본은 아닙니다.
`assembly_preview.png`는 공식 시뮬레이션 장면의 외관 메시를 사용한 4방향 참고 렌더이며, 실제 출력물 사진이나 새 서보 브래킷까지 반영한 최종 조립 인증 이미지는 아닙니다.

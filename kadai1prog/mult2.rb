# mult_basiconly.rb
# ����: ���R�� x, y
# �o��: x �~ y

x = gets().to_i             # ���͂��ꂽ���R���� x �ɑ��
y = gets().to_i             # ���͂��ꂽ���R���� y �ɑ��
seki = 0                    # 0 �� seki �ɑ��
while y > 0                 # y �� 0 ���傫���Ԃ� end �܂ł��J��Ԃ�
  a = seki; b = x; wa = a   #   �a�̃v���O���� add.rb ��}��
  while b > 0
    wa = wa + 1; b = b - 1
  end                       #   �a�̃v���O���� add.rb �͂����܂�
  seki = wa                 #   wa �̒l (seki + x) �� seki �ɑ��
  y = y - 1                 #   y - 1 �̒l�� y �ɑ��
end                         # �J��Ԃ��̏I���
puts(seki)                  # seki �̒l���o��

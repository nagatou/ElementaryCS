# mult.rb
# ����: ���R�� x, y
# �o��: x �~ y

x = gets().to_i       # ���͂��ꂽ���R���� x �ɑ��
y = gets().to_i       # ���͂��ꂽ���R���� y �ɑ��
seki = 0              # 0 �� seki �ɑ��
while y > 0           # y �� 0 ���傫���Ԃ� end �܂ł��J��Ԃ�
  seki = seki + x     #   wa + 1 �̒l�� wa �ɑ��
  y = y - 1           #   y - 1 �̒l�� y �ɑ��
end                   # �J��Ԃ��̏I���
puts(seki)            # seki �̒l���o��

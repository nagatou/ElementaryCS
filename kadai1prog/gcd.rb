# gcd.rb
# ����: ���R�� x, y
# �o��: x �� y �̍ő����

x = gets().to_i       # ���͂��ꂽ���R���� x �ɑ��
y = gets().to_i       # ���͂��ꂽ���R���� y �ɑ��
r = x % y             # x �� y �Ŋ������]��� r �ɑ��
while r > 0           # r �� 0 ���傫���Ԃ� end �܂ł��J��Ԃ�
  x = y               #   y �̒l�� x �ɑ��
  y = r               #   r �̒l�� y �ɑ��
  r = x % y           #   x �� y �Ŋ������]��� r �ɑ��
end                   # while �ɖ߂�
puts(y)               # y �̒l (�ő����) ���o��

package p453;

/* renamed from: ﾞˉ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public enum EnumC5371 {
    f20453("winreg interface", "338cd001-2244-31f1-aaaa-900038001003:v1.0"),
    f20455("srvsvc interface", "4b324fc8-1670-01d3-1278-5a47bf6ee188:v3.0"),
    f20452("lsarpc interface", "12345778-1234-ABCD-EF00-0123456789AB:v0.0"),
    f20457("samr interface", "12345778-1234-ABCD-EF00-0123456789AC:v1.0"),
    f20454("svcctl_interface", "367abb81-9844-35f1-ad32-98f038001003:v2.0"),
    f20456("NDR transfer syntax identifier", "8a885d04-1ceb-11c9-9fe8-08002b104860:v2.0");


    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final byte[] f20459 = new byte[16];

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f20460;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final short f20461;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f20462;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final short f20463;

    EnumC5371(String str, String str2) {
        int i;
        this.f20460 = str;
        this.f20462 = str2;
        String[] split = str2.split(":", 2);
        int i2 = 0;
        String[] split2 = split[0].split("-", 5);
        String[] strArr = {split2[0], split2[1], split2[2]};
        String[] strArr2 = {split2[3], split2[4]};
        int i3 = 0;
        int i4 = 0;
        int i5 = 4;
        for (int i6 = 3; i3 < i6; i6 = 3) {
            String str3 = strArr[i3];
            byte[] bytes = str3.getBytes();
            int length = str3.length() - 2;
            while (length >= 0) {
                int i7 = length;
                while (true) {
                    i = i2;
                    if (i7 < length + 2) {
                        byte b = bytes[i7];
                        byte[] bArr = this.f20459;
                        bArr[i4] = (byte) (bArr[i4] | ((byte) (Character.digit(b, 16) << i5)));
                        if (i5 == 0) {
                            i4++;
                            i5 = 4;
                        } else {
                            i5 = i;
                        }
                        i7++;
                        i2 = i;
                    }
                }
                length -= 2;
                i2 = i;
            }
            i3++;
        }
        int i8 = i2;
        while (i2 < 2) {
            byte[] bytes2 = strArr2[i2].getBytes();
            int length2 = bytes2.length;
            for (int i9 = i8; i9 < length2; i9++) {
                byte b2 = bytes2[i9];
                byte[] bArr2 = this.f20459;
                bArr2[i4] = (byte) (((byte) (Character.digit(b2, 16) << i5)) | bArr2[i4]);
                if (i5 == 0) {
                    i4++;
                    i5 = 4;
                } else {
                    i5 = i8;
                }
            }
            i2++;
        }
        String[] split3 = split[1].split("\\.", 2);
        this.f20461 = Short.valueOf(split3[i8].substring(1)).shortValue();
        this.f20463 = Short.valueOf(split3[1]).shortValue();
    }
}

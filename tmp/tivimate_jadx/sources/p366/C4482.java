package p366;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$Reader$EndOfFileException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import p031.InterfaceC1140;
import p087.AbstractC1751;
import p257.C3397;
import p307.AbstractC3740;
import ˊⁱ.ˑﹳ;

/* renamed from: ᵔﹶ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4482 implements InterfaceC1140 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final byte[] f16783 = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int[] f16782 = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m9039(InterfaceC4470 interfaceC4470, C3397 c3397) {
        try {
            int mo9016 = interfaceC4470.mo9016();
            if ((mo9016 & 65496) == 65496 || mo9016 == 19789 || mo9016 == 18761) {
                int m9040 = m9040(interfaceC4470);
                if (m9040 != -1) {
                    byte[] bArr = (byte[]) c3397.m7293(m9040, byte[].class);
                    try {
                        return m9041(interfaceC4470, bArr, m9040);
                    } finally {
                        c3397.m7296(bArr);
                    }
                }
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                String str = "Parser doesn't handle magic number: " + mo9016;
                return -1;
            }
        } catch (DefaultImageHeaderParser$Reader$EndOfFileException unused) {
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0064, code lost:
    
        return -1;
     */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m9040(p366.InterfaceC4470 r9) {
        /*
        L0:
            short r0 = r9.mo9017()
            r1 = 255(0xff, float:3.57E-43)
            r2 = 3
            r3 = -1
            java.lang.String r4 = "DfltImageHeaderParser"
            if (r0 == r1) goto L22
            boolean r9 = android.util.Log.isLoggable(r4, r2)
            if (r9 == 0) goto L64
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r1 = "Unknown segmentId="
            r9.<init>(r1)
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            return r3
        L22:
            short r0 = r9.mo9017()
            r1 = 218(0xda, float:3.05E-43)
            if (r0 != r1) goto L2b
            goto L64
        L2b:
            r1 = 217(0xd9, float:3.04E-43)
            if (r0 != r1) goto L39
            boolean r9 = android.util.Log.isLoggable(r4, r2)
            if (r9 == 0) goto L64
            java.lang.String r9 = "Found MARKER_EOI in exif segment"
            return r3
        L39:
            int r1 = r9.mo9016()
            int r1 = r1 + (-2)
            r5 = 225(0xe1, float:3.15E-43)
            if (r0 == r5) goto L65
            long r5 = (long) r1
            long r7 = r9.skip(r5)
            int r5 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r5 == 0) goto L0
            boolean r9 = android.util.Log.isLoggable(r4, r2)
            if (r9 == 0) goto L64
            java.lang.String r9 = ", wanted to skip: "
            java.lang.String r2 = ", but actually skipped: "
            java.lang.String r5 = "Unable to skip enough data, type: "
            java.lang.StringBuilder r9 = p307.AbstractC3740.m7944(r5, r0, r9, r1, r2)
            r9.append(r7)
            java.lang.String r9 = r9.toString()
        L64:
            return r3
        L65:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p366.C4482.m9040(ᵔﹶ.ˆʾ):int");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m9041(InterfaceC4470 interfaceC4470, byte[] bArr, int i) {
        ByteOrder byteOrder;
        short s;
        int mo9015 = interfaceC4470.mo9015(i, bArr);
        short s2 = -1;
        if (mo9015 == i) {
            int i2 = 0;
            byte[] bArr2 = f16783;
            boolean z = bArr != null && i > bArr2.length;
            if (z) {
                int i3 = 0;
                while (true) {
                    if (i3 >= bArr2.length) {
                        break;
                    }
                    if (bArr[i3] != bArr2[i3]) {
                        z = false;
                        break;
                    }
                    i3++;
                }
            }
            if (!z) {
                return Log.isLoggable("DfltImageHeaderParser", 3) ? -1 : -1;
            }
            ByteBuffer byteBuffer = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
            short s3 = byteBuffer.remaining() - 6 >= 2 ? byteBuffer.getShort(6) : (short) -1;
            if (s3 == 18761) {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            } else if (s3 != 19789) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    String str = "Unknown endianness = " + ((int) s3);
                }
                byteOrder = ByteOrder.BIG_ENDIAN;
            } else {
                byteOrder = ByteOrder.BIG_ENDIAN;
            }
            byteBuffer.order(byteOrder);
            int i4 = byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1;
            int i5 = i4 + 6;
            short s4 = byteBuffer.remaining() - i5 >= 2 ? byteBuffer.getShort(i5) : (short) -1;
            while (i2 < s4) {
                int i6 = (i2 * 12) + i4 + 8;
                short s5 = byteBuffer.remaining() - i6 >= 2 ? byteBuffer.getShort(i6) : s2;
                if (s5 == 274) {
                    int i7 = i6 + 2;
                    short s6 = byteBuffer.remaining() - i7 >= 2 ? byteBuffer.getShort(i7) : s2;
                    if (s6 < 1 || s6 > 12) {
                        s = s2;
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            String str2 = "Got invalid format code = " + ((int) s6);
                        }
                    } else {
                        int i8 = i6 + 4;
                        int i9 = byteBuffer.remaining() - i8 >= 4 ? byteBuffer.getInt(i8) : s2;
                        if (i9 >= 0) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                s = s2;
                                StringBuilder m7944 = AbstractC3740.m7944("Got tagIndex=", i2, " tagType=", s5, " formatCode=");
                                m7944.append((int) s6);
                                m7944.append(" componentCount=");
                                m7944.append(i9);
                                m7944.toString();
                            } else {
                                s = s2;
                            }
                            int i10 = i9 + f16782[s6];
                            if (i10 <= 4) {
                                int i11 = i6 + 8;
                                if (i11 < 0 || i11 > byteBuffer.remaining()) {
                                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        String str3 = "Illegal tagValueOffset=" + i11 + " tagType=" + ((int) s5);
                                    }
                                } else {
                                    if (i10 >= 0 && i10 + i11 <= byteBuffer.remaining()) {
                                        return byteBuffer.remaining() - i11 >= 2 ? byteBuffer.getShort(i11) : s;
                                    }
                                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        String str4 = "Illegal number of bytes for TI tag data tagType=" + ((int) s5);
                                    }
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                String str5 = "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) s6);
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        }
                    }
                    i2++;
                    s2 = s;
                }
                s = s2;
                i2++;
                s2 = s;
            }
        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            String str6 = "Unable to read exif segment data, length: " + i + ", actually read: " + mo9015;
            return -1;
        }
        return s2;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static ImageHeaderParser$ImageType m9042(InterfaceC4470 interfaceC4470) {
        try {
            int mo9016 = interfaceC4470.mo9016();
            if (mo9016 == 65496) {
                return ImageHeaderParser$ImageType.JPEG;
            }
            int mo9017 = (mo9016 << 8) | interfaceC4470.mo9017();
            if (mo9017 == 4671814) {
                return ImageHeaderParser$ImageType.GIF;
            }
            int mo90172 = (mo9017 << 8) | interfaceC4470.mo9017();
            if (mo90172 == -1991225785) {
                interfaceC4470.skip(21L);
                try {
                    return interfaceC4470.mo9017() >= 3 ? ImageHeaderParser$ImageType.PNG_A : ImageHeaderParser$ImageType.PNG;
                } catch (DefaultImageHeaderParser$Reader$EndOfFileException unused) {
                    return ImageHeaderParser$ImageType.PNG;
                }
            }
            if (mo90172 == 1380533830) {
                interfaceC4470.skip(4L);
                if (((interfaceC4470.mo9016() << 16) | interfaceC4470.mo9016()) != 1464156752) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int mo90162 = (interfaceC4470.mo9016() << 16) | interfaceC4470.mo9016();
                if ((mo90162 & (-256)) != 1448097792) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int i = mo90162 & 255;
                if (i == 88) {
                    interfaceC4470.skip(4L);
                    short mo90173 = interfaceC4470.mo9017();
                    return (mo90173 & 2) != 0 ? ImageHeaderParser$ImageType.ANIMATED_WEBP : (mo90173 & 16) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
                }
                if (i != 76) {
                    return ImageHeaderParser$ImageType.WEBP;
                }
                interfaceC4470.skip(4L);
                return (interfaceC4470.mo9017() & 8) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
            }
            if (((interfaceC4470.mo9016() << 16) | interfaceC4470.mo9016()) != 1718909296) {
                return ImageHeaderParser$ImageType.UNKNOWN;
            }
            int mo90163 = (interfaceC4470.mo9016() << 16) | interfaceC4470.mo9016();
            if (mo90163 == 1635150195) {
                return ImageHeaderParser$ImageType.ANIMATED_AVIF;
            }
            int i2 = 0;
            boolean z = mo90163 == 1635150182;
            interfaceC4470.skip(4L);
            int i3 = mo90172 - 16;
            if (i3 % 4 == 0) {
                while (i2 < 5 && i3 > 0) {
                    int mo90164 = (interfaceC4470.mo9016() << 16) | interfaceC4470.mo9016();
                    if (mo90164 == 1635150195) {
                        return ImageHeaderParser$ImageType.ANIMATED_AVIF;
                    }
                    if (mo90164 == 1635150182) {
                        z = true;
                    }
                    i2++;
                    i3 -= 4;
                }
            }
            return z ? ImageHeaderParser$ImageType.AVIF : ImageHeaderParser$ImageType.UNKNOWN;
        } catch (DefaultImageHeaderParser$Reader$EndOfFileException unused2) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    @Override // p031.InterfaceC1140
    /* renamed from: ʽ */
    public final int mo3570(ByteBuffer byteBuffer, C3397 c3397) {
        C4463 c4463 = new C4463(byteBuffer);
        AbstractC1751.m4711(c3397, "Argument must not be null");
        return m9039(c4463, c3397);
    }

    @Override // p031.InterfaceC1140
    /* renamed from: ˈ */
    public final ImageHeaderParser$ImageType mo3571(InputStream inputStream) {
        return m9042(new ˑﹳ(29, inputStream));
    }

    @Override // p031.InterfaceC1140
    /* renamed from: ⁱˊ */
    public final int mo3572(InputStream inputStream, C3397 c3397) {
        ˑﹳ r0 = new ˑﹳ(29, inputStream);
        AbstractC1751.m4711(c3397, "Argument must not be null");
        return m9039(r0, c3397);
    }

    @Override // p031.InterfaceC1140
    /* renamed from: ﹳٴ */
    public final ImageHeaderParser$ImageType mo3573(ByteBuffer byteBuffer) {
        AbstractC1751.m4711(byteBuffer, "Argument must not be null");
        return m9042(new C4463(byteBuffer));
    }
}

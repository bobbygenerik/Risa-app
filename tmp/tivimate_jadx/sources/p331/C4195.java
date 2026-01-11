package p331;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C0238;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import p005.C0823;
import p031.C1144;
import p031.EnumC1146;
import p031.InterfaceC1139;
import p073.C1642;
import p087.AbstractC1747;
import p138.C2352;
import p257.C3397;
import p257.InterfaceC3396;
import p262.C3433;
import p307.AbstractC3740;
import p376.C4535;
import p376.C4536;
import p376.C4537;
import ᵎˉ.ⁱˊ;

/* renamed from: ᴵﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4195 implements InterfaceC1139 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3433 f15620;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f15621;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f15622;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final ⁱˊ f15617 = new Object();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1642 f15616 = new C1642(1);

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ⁱˊ f15619 = f15617;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1642 f15618 = f15616;

    public C4195(Context context, ArrayList arrayList, InterfaceC3396 interfaceC3396, C3397 c3397) {
        this.f15622 = context.getApplicationContext();
        this.f15621 = arrayList;
        this.f15620 = new C3433(interfaceC3396, 8, c3397);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m8583(C4537 c4537, int i, int i2) {
        int min = Math.min(c4537.f17000 / i2, c4537.f17004 / i);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
            StringBuilder m7944 = AbstractC3740.m7944("Downsampling GIF, sampleSize: ", max, ", target dimens: [", i, "x");
            m7944.append(i2);
            m7944.append("], actual dimens: [");
            m7944.append(c4537.f17004);
            m7944.append("x");
            m7944.append(c4537.f17000);
            m7944.append("]");
            m7944.toString();
        }
        return max;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2352 m8584(ByteBuffer byteBuffer, int i, int i2, C4535 c4535, C1144 c1144) {
        StringBuilder sb;
        int i3 = AbstractC1747.f7106;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            C4537 m9107 = c4535.m9107();
            C2352 c2352 = null;
            if (m9107.f16995 > 0 && m9107.f17002 == 0) {
                Bitmap.Config config = c1144.m3577(AbstractC4192.f15602) == EnumC1146.f4413 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int m8583 = m8583(m9107, i, i2);
                ⁱˊ r10 = this.f15619;
                C3433 c3433 = this.f15620;
                r10.getClass();
                C4536 c4536 = new C4536(c3433, m9107, byteBuffer, m8583);
                c4536.m9110(config);
                c4536.f16984 = (c4536.f16984 + 1) % c4536.f16992.f16995;
                Bitmap m9112 = c4536.m9112();
                if (m9112 == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        sb = new StringBuilder("Decoded GIF from stream in ");
                    }
                    return null;
                }
                c2352 = new C2352(new C4194(new C0823(1, new C4196(ComponentCallbacks2C0238.m1182(this.f15622), c4536, i, i2, m9112))), 1);
                if (!Log.isLoggable("BufferGifDecoder", 2)) {
                    return c2352;
                }
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(AbstractC1747.m4706(elapsedRealtimeNanos));
                sb.toString();
                return c2352;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(AbstractC1747.m4706(elapsedRealtimeNanos));
                sb.toString();
                return c2352;
            }
            return null;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                String str = "Decoded GIF from stream in " + AbstractC1747.m4706(elapsedRealtimeNanos);
            }
            throw th;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:30:0x0059
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    @Override // p031.InterfaceC1139
    /* renamed from: ⁱˊ */
    public final p080.InterfaceC1710 mo3568(java.lang.Object r8, int r9, int r10, p031.C1144 r11) {
        /*
            r7 = this;
            r2 = r8
            java.nio.ByteBuffer r2 = (java.nio.ByteBuffer) r2
            ʾⁱ.ʽ r8 = r7.f15618
            monitor-enter(r8)
            java.util.ArrayDeque r0 = r8.f6680     // Catch: java.lang.Throwable -> L54
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L54
            ᵢٴ.ʽ r0 = (p376.C4535) r0     // Catch: java.lang.Throwable -> L54
            if (r0 != 0) goto L15
            ᵢٴ.ʽ r0 = new ᵢٴ.ʽ     // Catch: java.lang.Throwable -> L17
            r0.<init>()     // Catch: java.lang.Throwable -> L17
        L15:
            r5 = r0
            goto L1b
        L17:
            r0 = move-exception
            r9 = r0
            r1 = r7
            goto L57
        L1b:
            r0 = 0
            r5.f16972 = r0     // Catch: java.lang.Throwable -> L54
            byte[] r0 = r5.f16973     // Catch: java.lang.Throwable -> L54
            r1 = 0
            java.util.Arrays.fill(r0, r1)     // Catch: java.lang.Throwable -> L54
            ᵢٴ.ⁱˊ r0 = new ᵢٴ.ⁱˊ     // Catch: java.lang.Throwable -> L54
            r0.<init>()     // Catch: java.lang.Throwable -> L54
            r5.f16970 = r0     // Catch: java.lang.Throwable -> L54
            r5.f16971 = r1     // Catch: java.lang.Throwable -> L54
            java.nio.ByteBuffer r0 = r2.asReadOnlyBuffer()     // Catch: java.lang.Throwable -> L54
            r5.f16972 = r0     // Catch: java.lang.Throwable -> L54
            r0.position(r1)     // Catch: java.lang.Throwable -> L54
            java.nio.ByteBuffer r0 = r5.f16972     // Catch: java.lang.Throwable -> L54
            java.nio.ByteOrder r1 = java.nio.ByteOrder.LITTLE_ENDIAN     // Catch: java.lang.Throwable -> L54
            r0.order(r1)     // Catch: java.lang.Throwable -> L54
            monitor-exit(r8)
            r1 = r7
            r3 = r9
            r4 = r10
            r6 = r11
            ˉˈ.ˑﹳ r8 = r1.m8584(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L4c
            ʾⁱ.ʽ r9 = r1.f15618
            r9.m4493(r5)
            return r8
        L4c:
            r0 = move-exception
            r8 = r0
            ʾⁱ.ʽ r9 = r1.f15618
            r9.m4493(r5)
            throw r8
        L54:
            r0 = move-exception
            r1 = r7
        L56:
            r9 = r0
        L57:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L59
            throw r9
        L59:
            r0 = move-exception
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: p331.C4195.mo3568(java.lang.Object, int, int, ʼᵔ.ᵔᵢ):ʿʾ.ᵢˏ");
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ﹳٴ */
    public final boolean mo3569(Object obj, C1144 c1144) {
        return !((Boolean) c1144.m3577(AbstractC4192.f15601)).booleanValue() && ˏʻ.יـ(this.f15621, (ByteBuffer) obj) == ImageHeaderParser$ImageType.GIF;
    }
}

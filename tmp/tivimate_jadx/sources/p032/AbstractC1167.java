package p032;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.media3.decoder.DecoderInputBuffer$InsufficientCapacityException;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$DecoderInitializationException;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil$DecoderQueryException;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import p004.C0815;
import p055.C1490;
import p055.C1495;
import p076.InterfaceC1662;
import p171.AbstractC2649;
import p262.C3433;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p392.AbstractC4671;
import p392.C4651;
import p392.C4678;
import p392.C4687;
import p392.C4699;
import p395.C4733;
import p395.InterfaceC4735;
import p404.C4799;
import p421.C4994;
import p421.C4996;
import p421.InterfaceC5000;
import p425.C5042;
import ˉᵎ.ⁱˊ;

/* renamed from: ʼᵢ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1167 extends AbstractC4671 {

    /* renamed from: ـʻ, reason: contains not printable characters */
    public static final byte[] f4466 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public boolean f4467;

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public float f4468;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public int f4469;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public InterfaceC4735 f4470;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final InterfaceC1163 f4471;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public boolean f4472;

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public boolean f4473;

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public boolean f4474;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public float f4475;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public boolean f4476;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public C1165 f4477;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public boolean f4478;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final C4996 f4479;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public boolean f4480;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final C1164 f4481;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public MediaCrypto f4482;

    /* renamed from: ˈـ, reason: contains not printable characters */
    public boolean f4483;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final float f4484;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final C4996 f4485;

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public long f4486;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public InterfaceC4735 f4487;

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public long f4488;

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public boolean f4489;

    /* renamed from: ˋـ, reason: contains not printable characters */
    public C1151 f4490;

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public boolean f4491;

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public boolean f4492;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public boolean f4493;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public C1495 f4494;

    /* renamed from: ˑ, reason: contains not printable characters */
    public int f4495;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public InterfaceC1171 f4496;

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public boolean f4497;

    /* renamed from: י, reason: contains not printable characters */
    public MediaCodecRenderer$DecoderInitializationException f4498;

    /* renamed from: יˉ, reason: contains not printable characters */
    public long f4499;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public boolean f4500;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public int f4501;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final InterfaceC1170 f4502;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public boolean f4503;

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public boolean f4504;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public C4651 f4505;

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public boolean f4506;

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public int f4507;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public C1495 f4508;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public long f4509;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final C5042 f4510;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public ArrayDeque f4511;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final ArrayDeque f4512;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public C1495 f4513;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final C4996 f4514;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public MediaFormat f4515;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public ByteBuffer f4516;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final MediaCodec.BufferInfo f4517;

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public boolean f4518;

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public C4699 f4519;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public long f4520;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public boolean f4521;

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public int f4522;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final boolean f4523;

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public ExoPlaybackException f4524;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public boolean f4525;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public float f4526;

    /* renamed from: ﹶ, reason: contains not printable characters */
    public boolean f4527;

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public long f4528;

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public int f4529;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final long f4530;

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public long f4531;

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public boolean f4532;

    /* JADX WARN: Type inference failed for: r2v4, types: [ﹳⁱ.ˑﹳ, ʼᵢ.ᵎﹶ] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object, ﹶ.ᴵˊ] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object, ⁱי.ﾞᴵ] */
    public AbstractC1167(int i, InterfaceC1163 interfaceC1163, InterfaceC1170 interfaceC1170, boolean z, float f) {
        super(i);
        this.f4471 = interfaceC1163;
        interfaceC1170.getClass();
        this.f4502 = interfaceC1170;
        this.f4523 = z;
        this.f4484 = f;
        this.f4514 = new C4996(0, 0);
        this.f4485 = new C4996(0, 0);
        this.f4479 = new C4996(2, 0);
        ?? c4996 = new C4996(2, 0);
        c4996.f4450 = 32;
        this.f4481 = c4996;
        this.f4517 = new MediaCodec.BufferInfo();
        this.f4526 = 1.0f;
        this.f4468 = 1.0f;
        this.f4530 = -9223372036854775807L;
        this.f4512 = new ArrayDeque();
        this.f4490 = C1151.f4415;
        c4996.m9843(0);
        c4996.f18672.order(ByteOrder.nativeOrder());
        ?? obj = new Object();
        obj.f18967 = InterfaceC1662.f6762;
        obj.f18965 = 0;
        obj.f18966 = 2;
        this.f4510 = obj;
        this.f4475 = -1.0f;
        this.f4495 = 0;
        this.f4507 = 0;
        this.f4469 = -1;
        this.f4501 = -1;
        this.f4509 = -9223372036854775807L;
        this.f4499 = -9223372036854775807L;
        this.f4531 = -9223372036854775807L;
        this.f4528 = -9223372036854775807L;
        this.f4520 = -9223372036854775807L;
        this.f4522 = 0;
        this.f4529 = 0;
        this.f4519 = new Object();
        this.f4486 = -9223372036854775807L;
        this.f4488 = -9223372036854775807L;
    }

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public void mo3639() {
        this.f4469 = -1;
        this.f4485.f18672 = null;
        this.f4501 = -1;
        this.f4516 = null;
        this.f4499 = -9223372036854775807L;
        this.f4531 = -9223372036854775807L;
        this.f4528 = -9223372036854775807L;
        this.f4509 = -9223372036854775807L;
        this.f4489 = false;
        this.f4520 = -9223372036854775807L;
        this.f4474 = false;
        this.f4500 = false;
        this.f4476 = false;
        this.f4480 = false;
        this.f4525 = false;
        this.f4522 = 0;
        this.f4529 = 0;
        this.f4507 = this.f4504 ? 1 : 0;
        this.f4532 = false;
        this.f4486 = -9223372036854775807L;
        this.f4488 = -9223372036854775807L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        if (r4 >= r0) goto L16;
     */
    @Override // p392.AbstractC4671
    /* renamed from: ʻٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo756(p055.C1495[] r12, long r13, long r15, p420.C4987 r17) {
        /*
            r11 = this;
            ʼᵢ.ʼᐧ r12 = r11.f4490
            long r0 = r12.f4416
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 != 0) goto L24
            ʼᵢ.ʼᐧ r4 = new ʼᵢ.ʼᐧ
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.m3678(r4)
            boolean r12 = r11.f4506
            if (r12 == 0) goto L56
            r11.mo3660()
            return
        L24:
            java.util.ArrayDeque r12 = r11.f4512
            boolean r0 = r12.isEmpty()
            if (r0 == 0) goto L57
            long r0 = r11.f4499
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L3c
            long r4 = r11.f4528
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 == 0) goto L57
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 < 0) goto L57
        L3c:
            ʼᵢ.ʼᐧ r4 = new ʼᵢ.ʼᐧ
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.m3678(r4)
            ʼᵢ.ʼᐧ r12 = r11.f4490
            long r12 = r12.f4416
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 == 0) goto L56
            r11.mo3660()
        L56:
            return
        L57:
            ʼᵢ.ʼᐧ r0 = new ʼᵢ.ʼᐧ
            long r1 = r11.f4499
            r3 = r13
            r5 = r15
            r0.<init>(r1, r3, r5)
            r12.add(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p032.AbstractC1167.mo756(ʽⁱ.ﹳᐧ[], long, long, ﹳᵢ.ᵢˏ):void");
    }

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final void m3640() {
        int i = this.f4529;
        if (i == 1) {
            m3681();
            return;
        }
        if (i == 2) {
            m3681();
            m3659();
        } else if (i != 3) {
            this.f4491 = true;
            mo3687();
        } else {
            m3650();
            m3666();
        }
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final boolean m3641(long j, long j2) {
        if (j2 >= j) {
            return false;
        }
        C1495 c1495 = this.f4513;
        return c1495 == null || !Objects.equals(c1495.f5930, "audio/opus") || j - j2 > 80000;
    }

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final boolean m3642(C1495 c1495) {
        if (this.f4496 != null && this.f4529 != 3 && this.f17508 != 0) {
            float f = this.f4468;
            c1495.getClass();
            C1495[] c1495Arr = this.f17513;
            c1495Arr.getClass();
            float mo3648 = mo3648(f, c1495, c1495Arr);
            float f2 = this.f4475;
            if (f2 != mo3648) {
                if (mo3648 == -1.0f) {
                    if (this.f4474) {
                        this.f4522 = 1;
                        this.f4529 = 3;
                        return false;
                    }
                    m3650();
                    m3666();
                    return false;
                }
                if (f2 != -1.0f || mo3648 > this.f4484) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", mo3648);
                    InterfaceC1171 interfaceC1171 = this.f4496;
                    interfaceC1171.getClass();
                    interfaceC1171.mo3588(bundle);
                    this.f4475 = mo3648;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean m3643(long j, long j2) {
        C1164 c1164;
        int i;
        int i2;
        int i3;
        AbstractC3731.m7857(!this.f4491);
        C1164 c11642 = this.f4481;
        if (c11642.m3627()) {
            ByteBuffer byteBuffer = c11642.f18672;
            int i4 = this.f4501;
            int i5 = c11642.f4452;
            long j3 = c11642.f18671;
            boolean m3641 = m3641(this.f17519, c11642.f4451);
            boolean m3177 = c11642.m3177(4);
            C1495 c1495 = this.f4513;
            c1495.getClass();
            c1164 = c11642;
            if (mo3657(j, j2, null, byteBuffer, i4, 0, i5, j3, m3641, m3177, c1495)) {
                mo3672(c1164.f4451);
                c1164.mo3629();
            }
        }
        c1164 = c11642;
        if (this.f4483) {
            this.f4491 = true;
            return false;
        }
        ?? r2 = 0;
        boolean z = this.f4467;
        C4996 c4996 = this.f4479;
        if (z) {
            AbstractC3731.m7857(c1164.m3628(c4996));
            this.f4467 = false;
        }
        if (this.f4527) {
            if (c1164.m3627()) {
                return true;
            }
            this.f4521 = false;
            m3686();
            this.f4527 = false;
            m3666();
            if (!this.f4521) {
                return false;
            }
        }
        AbstractC3731.m7857(!this.f4483);
        C3433 c3433 = this.f17503;
        c3433.m7345();
        c4996.mo3629();
        while (true) {
            c4996.mo3629();
            int m9273 = m9273(c3433, c4996, r2);
            if (m9273 == -5) {
                mo3647(c3433);
                break;
            }
            if (m9273 != -4) {
                if (m9273 != -3) {
                    throw new IllegalStateException();
                }
                if (m9274()) {
                    this.f4531 = this.f4499;
                }
            } else {
                if (c4996.m3177(4)) {
                    this.f4483 = true;
                    this.f4531 = this.f4499;
                    break;
                }
                this.f4499 = Math.max(this.f4499, c4996.f18671);
                if (m9274() || this.f4485.m3177(536870912)) {
                    this.f4531 = this.f4499;
                }
                byte[] bArr = null;
                if (this.f4497) {
                    C1495 c14952 = this.f4494;
                    c14952.getClass();
                    this.f4513 = c14952;
                    if (Objects.equals(c14952.f5930, "audio/opus") && !this.f4513.f5934.isEmpty()) {
                        byte[] bArr2 = (byte[]) this.f4513.f5934.get(r2);
                        int i6 = (bArr2[10] & 255) | ((bArr2[11] & 255) << 8);
                        C1490 m4300 = this.f4513.m4300();
                        m4300.f5863 = i6;
                        this.f4513 = new C1495(m4300);
                    }
                    mo3680(this.f4513, null);
                    this.f4497 = r2;
                }
                c4996.m9845();
                C1495 c14953 = this.f4513;
                if (c14953 != null && Objects.equals(c14953.f5930, "audio/opus")) {
                    if (c4996.m3177(268435456)) {
                        c4996.f18666 = this.f4513;
                        mo3658(c4996);
                    }
                    if (this.f17519 - c4996.f18671 <= 80000) {
                        List list = this.f4513.f5934;
                        C5042 c5042 = this.f4510;
                        c5042.getClass();
                        c4996.f18672.getClass();
                        if (c4996.f18672.limit() - c4996.f18672.position() != 0) {
                            if (c5042.f18966 == 2 && (list.size() == 1 || list.size() == 3)) {
                                bArr = (byte[]) list.get(r2);
                            }
                            ByteBuffer byteBuffer2 = c4996.f18672;
                            int position = byteBuffer2.position();
                            int limit = byteBuffer2.limit();
                            int i7 = limit - position;
                            int i8 = (i7 + 255) / 255;
                            int i9 = i8 + 27 + i7;
                            if (c5042.f18966 == 2) {
                                i = bArr != null ? bArr.length + 28 : 47;
                                i9 = i + 44 + i9;
                            } else {
                                i = r2;
                            }
                            if (c5042.f18967.capacity() < i9) {
                                c5042.f18967 = ByteBuffer.allocate(i9).order(ByteOrder.LITTLE_ENDIAN);
                            } else {
                                c5042.f18967.clear();
                            }
                            ByteBuffer byteBuffer3 = c5042.f18967;
                            if (c5042.f18966 == 2) {
                                if (bArr != null) {
                                    C5042.m9951(byteBuffer3, 0L, 0, 1, true);
                                    i3 = limit;
                                    byteBuffer3.put(ⁱˊ.ˈ(bArr.length));
                                    byteBuffer3.put(bArr);
                                    i2 = i;
                                    byteBuffer3.putInt(22, AbstractC3712.m7774(byteBuffer3.arrayOffset(), bArr.length + 28, 0, byteBuffer3.array()));
                                    byteBuffer3.position(bArr.length + 28);
                                } else {
                                    i2 = i;
                                    i3 = limit;
                                    byteBuffer3.put(C5042.f18963);
                                }
                                byteBuffer3.put(C5042.f18964);
                            } else {
                                i2 = i;
                                i3 = limit;
                            }
                            int m5912 = c5042.f18965 + ((int) ((AbstractC2649.m5912(byteBuffer2.get(0), byteBuffer2.limit() > 1 ? byteBuffer2.get(1) : (byte) 0) * 48000) / 1000000));
                            c5042.f18965 = m5912;
                            C5042.m9951(byteBuffer3, m5912, c5042.f18966, i8, false);
                            for (int i10 = 0; i10 < i8; i10++) {
                                if (i7 >= 255) {
                                    byteBuffer3.put((byte) -1);
                                    i7 -= 255;
                                } else {
                                    byteBuffer3.put((byte) i7);
                                    i7 = 0;
                                }
                            }
                            int i11 = i3;
                            while (position < i11) {
                                byteBuffer3.put(byteBuffer2.get(position));
                                position++;
                            }
                            byteBuffer2.position(byteBuffer2.limit());
                            byteBuffer3.flip();
                            if (c5042.f18966 == 2) {
                                byteBuffer3.putInt(i2 + 66, AbstractC3712.m7774(byteBuffer3.arrayOffset() + i2 + 44, byteBuffer3.limit() - byteBuffer3.position(), 0, byteBuffer3.array()));
                            } else {
                                byteBuffer3.putInt(22, AbstractC3712.m7774(byteBuffer3.arrayOffset(), byteBuffer3.limit() - byteBuffer3.position(), 0, byteBuffer3.array()));
                            }
                            c5042.f18966++;
                            c5042.f18967 = byteBuffer3;
                            c4996.mo3629();
                            c4996.m9843(c5042.f18967.remaining());
                            c4996.f18672.put(c5042.f18967);
                            c4996.m9845();
                        }
                    }
                }
                if (c1164.m3627()) {
                    long j4 = this.f17519;
                    if (m3641(j4, c1164.f4451) != m3641(j4, c4996.f18671)) {
                        break;
                    }
                }
                if (!c1164.m3628(c4996)) {
                    break;
                }
                r2 = 0;
            }
        }
        this.f4467 = true;
        if (c1164.m3627()) {
            c1164.m9845();
        }
        return c1164.m3627() || this.f4483 || this.f4527;
    }

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public boolean mo3644() {
        return true;
    }

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public boolean mo3645(C1495 c1495) {
        return false;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾˋ */
    public final int mo762(C1495 c1495) {
        try {
            return mo3661(this.f4502, c1495);
        } catch (MediaCodecUtil$DecoderQueryException e) {
            throw m9276(e, c1495, false, 4002);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0078 A[LOOP:1: B:33:0x0053->B:42:0x0078, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0079 A[EDGE_INSN: B:43:0x0079->B:44:0x0079 BREAK  A[LOOP:1: B:33:0x0053->B:42:0x0078], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0099 A[LOOP:2: B:45:0x0079->B:54:0x0099, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x009a A[EDGE_INSN: B:55:0x009a->B:56:0x009a BREAK  A[LOOP:2: B:45:0x0079->B:54:0x0099], SYNTHETIC] */
    @Override // p392.AbstractC4671
    /* renamed from: ʾᵎ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo763(long r12, long r14) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p032.AbstractC1167.mo763(long, long):void");
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public abstract void mo3646(String str);

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d9, code lost:
    
        if (r4.mo9465(r2) != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0107, code lost:
    
        if (m3655() == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x013b, code lost:
    
        if (m3655() == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x014d, code lost:
    
        if (m3655() == false) goto L73;
     */
    /* renamed from: ʿᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p392.C4687 mo3647(p262.C3433 r13) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p032.AbstractC1167.mo3647(ـʾ.ᵔﹳ):ⁱי.ᵎﹶ");
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public abstract float mo3648(float f, C1495 c1495, C1495[] c1495Arr);

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public long mo3649(long j, long j2) {
        return super.mo778(j, j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final void m3650() {
        try {
            InterfaceC1171 interfaceC1171 = this.f4496;
            if (interfaceC1171 != null) {
                interfaceC1171.mo3599();
                this.f4519.f17747++;
                C1165 c1165 = this.f4477;
                c1165.getClass();
                mo3646(c1165.f4462);
            }
            this.f4496 = null;
            try {
                MediaCrypto mediaCrypto = this.f4482;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.f4496 = null;
            try {
                MediaCrypto mediaCrypto2 = this.f4482;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public abstract C4687 mo3651(C1165 c1165, C1495 c1495, C1495 c14952);

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public boolean mo3652(C1495 c1495) {
        return true;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉʿ */
    public boolean mo766() {
        if (this.f4494 == null) {
            return false;
        }
        if (m9275() || this.f4501 >= 0) {
            return true;
        }
        if (this.f4509 == -9223372036854775807L) {
            return false;
        }
        this.f17514.getClass();
        return SystemClock.elapsedRealtime() < this.f4509;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉˆ */
    public void mo767() {
        this.f4494 = null;
        m3678(C1151.f4415);
        this.f4512.clear();
        if (!this.f4521) {
            m3669();
        } else {
            this.f4521 = false;
            m3686();
        }
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public abstract void mo3653(long j, long j2, String str);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean m3654() {
        InterfaceC1171 interfaceC1171 = this.f4496;
        if (interfaceC1171 != null && this.f4522 != 2 && !this.f4483) {
            int i = this.f4469;
            C4996 c4996 = this.f4485;
            if (i < 0) {
                int mo3592 = interfaceC1171.mo3592();
                this.f4469 = mo3592;
                if (mo3592 >= 0) {
                    c4996.f18672 = interfaceC1171.mo3594(mo3592);
                    c4996.mo3629();
                }
            }
            if (this.f4522 == 1) {
                if (!this.f4478) {
                    this.f4489 = true;
                    interfaceC1171.mo3590(this.f4469, 0, 0L, 4);
                    this.f4469 = -1;
                    c4996.f18672 = null;
                }
                this.f4522 = 2;
                return false;
            }
            if (this.f4500) {
                this.f4500 = false;
                ByteBuffer byteBuffer = c4996.f18672;
                byteBuffer.getClass();
                byteBuffer.put(f4466);
                interfaceC1171.mo3590(this.f4469, 38, 0L, 0);
                this.f4469 = -1;
                c4996.f18672 = null;
                this.f4474 = true;
                return true;
            }
            if (this.f4507 == 1) {
                int i2 = 0;
                while (true) {
                    C1495 c1495 = this.f4508;
                    c1495.getClass();
                    if (i2 >= c1495.f5934.size()) {
                        break;
                    }
                    byte[] bArr = (byte[]) this.f4508.f5934.get(i2);
                    ByteBuffer byteBuffer2 = c4996.f18672;
                    byteBuffer2.getClass();
                    byteBuffer2.put(bArr);
                    i2++;
                }
                this.f4507 = 2;
            }
            ByteBuffer byteBuffer3 = c4996.f18672;
            byteBuffer3.getClass();
            int position = byteBuffer3.position();
            C3433 c3433 = this.f17503;
            c3433.m7345();
            try {
                int m9273 = m9273(c3433, c4996, 0);
                if (m9273 == -3) {
                    if (m9274()) {
                        this.f4531 = this.f4499;
                        return false;
                    }
                } else {
                    if (m9273 == -5) {
                        if (this.f4507 == 2) {
                            c4996.mo3629();
                            this.f4507 = 1;
                        }
                        mo3647(c3433);
                        return true;
                    }
                    if (!c4996.m3177(4)) {
                        if (!this.f4474 && !c4996.m3177(1)) {
                            c4996.mo3629();
                            if (this.f4507 == 2) {
                                this.f4507 = 1;
                                return true;
                            }
                        } else if (!mo3667(c4996)) {
                            boolean m3177 = c4996.m3177(1073741824);
                            if (m3177) {
                                C4994 c4994 = c4996.f18667;
                                if (position == 0) {
                                    c4994.getClass();
                                } else {
                                    if (c4994.f18659 == null) {
                                        int[] iArr = new int[1];
                                        c4994.f18659 = iArr;
                                        c4994.f18656.numBytesOfClearData = iArr;
                                    }
                                    int[] iArr2 = c4994.f18659;
                                    iArr2[0] = iArr2[0] + position;
                                }
                            }
                            long j = c4996.f18671;
                            if (this.f4497) {
                                ArrayDeque arrayDeque = this.f4512;
                                if (arrayDeque.isEmpty()) {
                                    C0815 c0815 = this.f4490.f4417;
                                    C1495 c14952 = this.f4494;
                                    c14952.getClass();
                                    c0815.m2966(j, c14952);
                                } else {
                                    C0815 c08152 = ((C1151) arrayDeque.peekLast()).f4417;
                                    C1495 c14953 = this.f4494;
                                    c14953.getClass();
                                    c08152.m2966(j, c14953);
                                }
                                this.f4497 = false;
                            }
                            this.f4499 = Math.max(this.f4499, j);
                            if (m9274() || c4996.m3177(536870912)) {
                                this.f4531 = this.f4499;
                            }
                            c4996.m9845();
                            if (c4996.m3177(268435456)) {
                                mo3658(c4996);
                            }
                            mo3675(c4996);
                            int mo3682 = mo3682(c4996);
                            if (Build.VERSION.SDK_INT < 34 || (mo3682 & 32) == 0) {
                                C4678 c4678 = this.f17507;
                                c4678.getClass();
                                if (!c4678.f17554) {
                                    this.f4488 = Math.max(this.f4488, c4996.f18671);
                                }
                            }
                            if (m3177) {
                                interfaceC1171.mo3598(this.f4469, c4996.f18667, j, mo3682);
                            } else {
                                int i3 = this.f4469;
                                ByteBuffer byteBuffer4 = c4996.f18672;
                                byteBuffer4.getClass();
                                interfaceC1171.mo3590(i3, byteBuffer4.limit(), j, mo3682);
                            }
                            this.f4469 = -1;
                            c4996.f18672 = null;
                            this.f4474 = true;
                            this.f4507 = 0;
                            this.f4519.f17740++;
                            return true;
                        }
                        return true;
                    }
                    this.f4531 = this.f4499;
                    if (this.f4507 == 2) {
                        c4996.mo3629();
                        this.f4507 = 1;
                    }
                    this.f4483 = true;
                    if (!this.f4474) {
                        m3640();
                        return false;
                    }
                    if (!this.f4478) {
                        this.f4489 = true;
                        interfaceC1171.mo3590(this.f4469, 0, 0L, 4);
                        this.f4469 = -1;
                        c4996.f18672 = null;
                        return false;
                    }
                }
            } catch (DecoderInputBuffer$InsufficientCapacityException e) {
                mo3676(e);
                m3668(0);
                m3681();
                return true;
            }
        }
        return false;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean m3655() {
        if (!this.f4474) {
            m3659();
            return true;
        }
        this.f4522 = 1;
        if (this.f4493) {
            this.f4529 = 3;
            return false;
        }
        this.f4529 = 2;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0188  */
    /* renamed from: ˊˋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3656(p032.C1165 r12, android.media.MediaCrypto r13) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p032.AbstractC1167.m3656(ʼᵢ.ᵔʾ, android.media.MediaCrypto):void");
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public abstract boolean mo3657(long j, long j2, InterfaceC1171 interfaceC1171, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, C1495 c1495);

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public abstract void mo3658(C4996 c4996);

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final void m3659() {
        InterfaceC4735 interfaceC4735 = this.f4487;
        interfaceC4735.getClass();
        InterfaceC5000 mo9467 = interfaceC4735.mo9467();
        if (mo9467 instanceof C4733) {
            try {
                MediaCrypto mediaCrypto = this.f4482;
                mediaCrypto.getClass();
                mediaCrypto.setMediaDrmSession(((C4733) mo9467).f17884);
            } catch (MediaCryptoException e) {
                throw m9276(e, this.f4494, false, 6006);
            }
        }
        m3671(this.f4487);
        this.f4522 = 0;
        this.f4529 = 0;
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public abstract void mo3660();

    /* renamed from: ˑ, reason: contains not printable characters */
    public abstract int mo3661(InterfaceC1170 interfaceC1170, C1495 c1495);

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final void m3662() {
        mo3639();
        this.f4524 = null;
        this.f4511 = null;
        this.f4477 = null;
        this.f4508 = null;
        this.f4515 = null;
        this.f4503 = false;
        this.f4473 = false;
        this.f4475 = -1.0f;
        this.f4495 = 0;
        this.f4472 = false;
        this.f4493 = false;
        this.f4478 = false;
        this.f4504 = false;
        this.f4507 = 0;
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public abstract C4799 mo3663(C1165 c1165, C1495 c1495, MediaCrypto mediaCrypto, float f);

    /* renamed from: י, reason: contains not printable characters */
    public boolean mo3664() {
        int i = this.f4529;
        if (i == 3 || ((this.f4472 && !this.f4473) || (this.f4493 && this.f4489))) {
            return true;
        }
        if (i != 2) {
            return false;
        }
        try {
            m3659();
            return false;
        } catch (ExoPlaybackException e) {
            AbstractC3731.m7859("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e);
            return true;
        }
    }

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final void m3665(long j) {
        C1495 c1495 = (C1495) this.f4490.f4417.m2964(j);
        if (c1495 == null && this.f4518 && this.f4515 != null) {
            c1495 = (C1495) this.f4490.f4417.m2963();
        }
        if (c1495 != null) {
            this.f4513 = c1495;
        } else if (!this.f4503 || this.f4513 == null) {
            return;
        }
        C1495 c14952 = this.f4513;
        c14952.getClass();
        mo3680(c14952, this.f4515);
        this.f4503 = false;
        this.f4518 = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0073, code lost:
    
        if (r7 != 4) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008c, code lost:
    
        if (r2.mo9473() != null) goto L74;
     */
    /* renamed from: ـˏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3666() {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p032.AbstractC1167.m3666():void");
    }

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public boolean mo3667(C4996 c4996) {
        return false;
    }

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final boolean m3668(int i) {
        C3433 c3433 = this.f17503;
        c3433.m7345();
        C4996 c4996 = this.f4514;
        c4996.mo3629();
        int m9273 = m9273(c3433, c4996, i | 4);
        if (m9273 == -5) {
            mo3647(c3433);
            return true;
        }
        if (m9273 != -4 || !c4996.m3177(4)) {
            return false;
        }
        this.f4483 = true;
        m3640();
        return false;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final boolean m3669() {
        if (this.f4496 != null) {
            if (mo3664()) {
                m3650();
                return true;
            }
            if (mo3644()) {
                m3681();
                return false;
            }
            long j = this.f4488;
            if (j != -9223372036854775807L && this.f17519 <= j && this.f4528 < j) {
                this.f4532 = true;
                this.f4488 = -9223372036854775807L;
            }
        }
        return false;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean m3670(long j, long j2) {
        InterfaceC1171 interfaceC1171 = this.f4496;
        interfaceC1171.getClass();
        int i = this.f4501;
        MediaCodec.BufferInfo bufferInfo = this.f4517;
        if (i < 0) {
            int mo3593 = interfaceC1171.mo3593(bufferInfo);
            if (mo3593 < 0) {
                if (mo3593 == -2) {
                    this.f4473 = true;
                    InterfaceC1171 interfaceC11712 = this.f4496;
                    interfaceC11712.getClass();
                    MediaFormat mo3586 = interfaceC11712.mo3586();
                    if (this.f4495 != 0 && mo3586.getInteger("width") == 32 && mo3586.getInteger("height") == 32) {
                        this.f4476 = true;
                        return true;
                    }
                    this.f4515 = mo3586;
                    this.f4503 = true;
                    return true;
                }
                if (this.f4478 && (this.f4483 || this.f4522 == 2)) {
                    m3640();
                }
                long j3 = this.f4520;
                if (j3 != -9223372036854775807L) {
                    long j4 = j3 + 100;
                    this.f17514.getClass();
                    if (j4 < System.currentTimeMillis()) {
                        m3640();
                        return false;
                    }
                }
                return false;
            }
            if (this.f4476) {
                this.f4476 = false;
                interfaceC1171.mo3601(mo3593);
                return true;
            }
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                m3640();
                return false;
            }
            this.f4501 = mo3593;
            ByteBuffer mo3591 = interfaceC1171.mo3591(mo3593);
            this.f4516 = mo3591;
            if (mo3591 != null) {
                mo3591.position(bufferInfo.offset);
                this.f4516.limit(bufferInfo.offset + bufferInfo.size);
            }
            m3665(bufferInfo.presentationTimeUs);
        }
        long j5 = bufferInfo.presentationTimeUs;
        this.f4480 = j5 < this.f17519;
        long j6 = this.f4531;
        this.f4525 = j6 != -9223372036854775807L && j6 <= j5;
        if (this.f4532) {
            long j7 = this.f4486;
            if (j7 == -9223372036854775807L || j5 > j7) {
                this.f4486 = j5;
                this.f4480 = true;
                this.f4525 = false;
            } else {
                this.f4532 = false;
                this.f4486 = -9223372036854775807L;
            }
        }
        ByteBuffer byteBuffer = this.f4516;
        int i2 = this.f4501;
        int i3 = bufferInfo.flags;
        boolean z = this.f4480;
        boolean z2 = this.f4525;
        C1495 c1495 = this.f4513;
        c1495.getClass();
        if (!mo3657(j, j2, interfaceC1171, byteBuffer, i2, i3, 1, j5, z, z2, c1495)) {
            return false;
        }
        mo3672(bufferInfo.presentationTimeUs);
        boolean z3 = (bufferInfo.flags & 4) != 0;
        if (!z3 && this.f4489 && this.f4525) {
            this.f17514.getClass();
            this.f4520 = System.currentTimeMillis();
        }
        this.f4501 = -1;
        this.f4516 = null;
        if (!z3) {
            return true;
        }
        m3640();
        return false;
    }

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public final void m3671(InterfaceC4735 interfaceC4735) {
        AbstractC3740.m7928(this.f4470, interfaceC4735);
        this.f4470 = interfaceC4735;
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public void mo3672(long j) {
        this.f4528 = j;
        while (true) {
            ArrayDeque arrayDeque = this.f4512;
            if (arrayDeque.isEmpty() || j < ((C1151) arrayDeque.peek()).f4419) {
                return;
            }
            C1151 c1151 = (C1151) arrayDeque.poll();
            c1151.getClass();
            m3678(c1151);
            mo3660();
        }
    }

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public boolean mo3673(C1165 c1165) {
        return true;
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public void mo3674(long j) {
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public void mo3675(C4996 c4996) {
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᴵˊ */
    public final int mo774() {
        return 8;
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public abstract void mo3676(Exception exc);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public MediaCodecDecoderException mo3677(IllegalStateException illegalStateException, C1165 c1165) {
        return new MediaCodecDecoderException(illegalStateException, c1165);
    }

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final void m3678(C1151 c1151) {
        this.f4490 = c1151;
        long j = c1151.f4416;
        if (j != -9223372036854775807L) {
            this.f4518 = true;
            mo3674(j);
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final List m3679(boolean z) {
        C1495 c1495 = this.f4494;
        c1495.getClass();
        InterfaceC1170 interfaceC1170 = this.f4502;
        ArrayList mo3683 = mo3683(interfaceC1170, c1495, z);
        if (!mo3683.isEmpty() || !z) {
            return mo3683;
        }
        ArrayList mo36832 = mo3683(interfaceC1170, c1495, false);
        if (!mo36832.isEmpty()) {
            AbstractC3731.m7850("MediaCodecRenderer", "Drm session requires secure decoder for " + c1495.f5930 + ", but no secure decoder available. Trying to proceed with " + mo36832 + ".");
        }
        return mo36832;
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public abstract void mo3680(C1495 c1495, MediaFormat mediaFormat);

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m3681() {
        try {
            InterfaceC1171 interfaceC1171 = this.f4496;
            AbstractC3731.m7868(interfaceC1171);
            interfaceC1171.flush();
        } finally {
            mo3639();
        }
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int mo3682(C4996 c4996) {
        return 0;
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public abstract ArrayList mo3683(InterfaceC1170 interfaceC1170, C1495 c1495, boolean z);

    @Override // p392.AbstractC4671
    /* renamed from: ᵔᵢ */
    public final long mo778(long j, long j2) {
        return mo3649(j, j2);
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᵔﹳ */
    public void mo779(boolean z, long j) {
        this.f4483 = false;
        this.f4491 = false;
        this.f4492 = false;
        if (this.f4521) {
            m3686();
        } else if (m3669()) {
            m3666();
        }
        if (this.f4490.f4417.m2960() > 0) {
            this.f4497 = true;
        }
        this.f4490.f4417.m2965();
        this.f4512.clear();
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public void mo3684(float f, float f2) {
        this.f4526 = f;
        this.f4468 = f2;
        m3642(this.f4508);
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m3685(MediaCrypto mediaCrypto, boolean z) {
        C1495 c1495 = this.f4494;
        c1495.getClass();
        if (this.f4511 == null) {
            try {
                List m3679 = m3679(z);
                ArrayDeque arrayDeque = new ArrayDeque();
                this.f4511 = arrayDeque;
                if (this.f4523) {
                    arrayDeque.addAll(m3679);
                } else {
                    ArrayList arrayList = (ArrayList) m3679;
                    if (!arrayList.isEmpty()) {
                        this.f4511.add((C1165) arrayList.get(0));
                    }
                }
                this.f4498 = null;
            } catch (MediaCodecUtil$DecoderQueryException e) {
                throw new MediaCodecRenderer$DecoderInitializationException(c1495, e, z, -49998);
            }
        }
        if (this.f4511.isEmpty()) {
            throw new MediaCodecRenderer$DecoderInitializationException(c1495, null, z, -49999);
        }
        ArrayDeque arrayDeque2 = this.f4511;
        arrayDeque2.getClass();
        while (this.f4496 == null) {
            C1165 c1165 = (C1165) arrayDeque2.peekFirst();
            c1165.getClass();
            if (!mo3652(c1495) || !mo3673(c1165)) {
                return;
            }
            try {
                m3656(c1165, mediaCrypto);
            } catch (Exception e2) {
                AbstractC3731.m7859("MediaCodecRenderer", "Failed to initialize decoder: " + c1165, e2);
                arrayDeque2.removeFirst();
                MediaCodecRenderer$DecoderInitializationException mediaCodecRenderer$DecoderInitializationException = new MediaCodecRenderer$DecoderInitializationException("Decoder init failed: " + c1165.f4462 + ", " + c1495, e2, c1495.f5930, z, c1165, e2 instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) e2).getDiagnosticInfo() : null);
                mo3676(mediaCodecRenderer$DecoderInitializationException);
                MediaCodecRenderer$DecoderInitializationException mediaCodecRenderer$DecoderInitializationException2 = this.f4498;
                if (mediaCodecRenderer$DecoderInitializationException2 == null) {
                    this.f4498 = mediaCodecRenderer$DecoderInitializationException;
                } else {
                    this.f4498 = new MediaCodecRenderer$DecoderInitializationException(mediaCodecRenderer$DecoderInitializationException2.getMessage(), mediaCodecRenderer$DecoderInitializationException2.getCause(), mediaCodecRenderer$DecoderInitializationException2.f1243, mediaCodecRenderer$DecoderInitializationException2.f1245, mediaCodecRenderer$DecoderInitializationException2.f1242, mediaCodecRenderer$DecoderInitializationException2.f1244);
                }
                if (arrayDeque2.isEmpty()) {
                    throw this.f4498;
                }
            }
        }
        this.f4511 = null;
    }

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public final void m3686() {
        this.f4499 = -9223372036854775807L;
        this.f4531 = -9223372036854775807L;
        this.f4528 = -9223372036854775807L;
        this.f4527 = false;
        this.f4481.mo3629();
        this.f4479.mo3629();
        this.f4467 = false;
        C5042 c5042 = this.f4510;
        c5042.getClass();
        c5042.f18967 = InterfaceC1662.f6762;
        c5042.f18965 = 0;
        c5042.f18966 = 2;
    }

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public abstract void mo3687();
}

package p047;

import java.util.List;
import java.util.Map;
import p017.AbstractC0993;
import p017.AbstractC0996;
import p017.AbstractC1004;
import p055.C1486;

/* renamed from: ʽˑ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1371 extends AbstractC1355 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final C1363 f5373;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean f5374;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean f5375;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final long f5376;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f5377;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f5378;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final long f5379;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean f5380;

    /* renamed from: ˏי, reason: contains not printable characters */
    public final AbstractC0996 f5381;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f5382;

    /* renamed from: יـ, reason: contains not printable characters */
    public final AbstractC0993 f5383;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final AbstractC0993 f5384;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final long f5385;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f5386;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final long f5387;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long f5388;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final C1486 f5389;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final AbstractC0993 f5390;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int f5391;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f5392;

    public C1371(int i, String str, List list, long j, boolean z, long j2, boolean z2, int i2, long j3, int i3, long j4, long j5, boolean z3, boolean z4, boolean z5, C1486 c1486, List list2, List list3, C1363 c1363, Map map, List list4) {
        super(str, list, z3);
        this.f5378 = i;
        this.f5388 = j2;
        this.f5386 = z;
        this.f5374 = z2;
        this.f5377 = i2;
        this.f5385 = j3;
        this.f5391 = i3;
        this.f5379 = j4;
        this.f5387 = j5;
        this.f5380 = z4;
        this.f5375 = z5;
        this.f5389 = c1486;
        this.f5390 = AbstractC0993.m3264(list2);
        this.f5383 = AbstractC0993.m3264(list3);
        this.f5381 = AbstractC0996.m3270(map);
        this.f5384 = AbstractC0993.m3264(list4);
        if (!list3.isEmpty()) {
            C1364 c1364 = (C1364) AbstractC1004.m3281(list3);
            this.f5376 = c1364.f5234 + c1364.f5226;
        } else if (list2.isEmpty()) {
            this.f5376 = 0L;
        } else {
            C1354 c1354 = (C1354) AbstractC1004.m3281(list2);
            this.f5376 = c1354.f5234 + c1354.f5226;
        }
        this.f5382 = j != -9223372036854775807L ? j >= 0 ? Math.min(this.f5376, j) : Math.max(0L, this.f5376 + j) : -9223372036854775807L;
        this.f5392 = j >= 0;
        this.f5373 = c1363;
    }

    @Override // p455.InterfaceC5376
    /* renamed from: ﹳٴ */
    public final Object mo4029(List list) {
        return this;
    }
}

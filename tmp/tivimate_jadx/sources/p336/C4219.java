package p336;

import p137.AbstractC2305;
import p152.AbstractC2444;
import p438.AbstractC5176;

/* renamed from: ᵎʽ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4219 {
    public static final C4225 Companion = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Integer f15686;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Integer f15687;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Long f15688;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Double f15689;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Boolean f15690;

    public /* synthetic */ C4219(int i, Boolean bool, Double d, Integer num, Integer num2, Long l) {
        if (31 != (i & 31)) {
            AbstractC5176.m10159(i, 31, C4217.f15684.mo4337());
            throw null;
        }
        this.f15690 = bool;
        this.f15689 = d;
        this.f15686 = num;
        this.f15687 = num2;
        this.f15688 = l;
    }

    public C4219(Boolean bool, Double d, Integer num, Integer num2, Long l) {
        this.f15690 = bool;
        this.f15689 = d;
        this.f15686 = num;
        this.f15687 = num2;
        this.f15688 = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4219)) {
            return false;
        }
        C4219 c4219 = (C4219) obj;
        return AbstractC2444.m5562(this.f15690, c4219.f15690) && AbstractC2444.m5562(this.f15689, c4219.f15689) && AbstractC2444.m5562(this.f15686, c4219.f15686) && AbstractC2444.m5562(this.f15687, c4219.f15687) && AbstractC2444.m5562(this.f15688, c4219.f15688);
    }

    public final int hashCode() {
        Boolean bool = this.f15690;
        int hashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Double d = this.f15689;
        int hashCode2 = (hashCode + (d == null ? 0 : d.hashCode())) * 31;
        Integer num = this.f15686;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f15687;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l = this.f15688;
        return hashCode4 + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SessionConfigs(sessionsEnabled=");
        sb.append(this.f15690);
        sb.append(", sessionSamplingRate=");
        sb.append(this.f15689);
        sb.append(", sessionTimeoutSeconds=");
        sb.append(this.f15686);
        sb.append(", cacheDurationSeconds=");
        sb.append(this.f15687);
        sb.append(", cacheUpdatedTimeSeconds=");
        return AbstractC2305.m5375(sb, this.f15688, ')');
    }
}

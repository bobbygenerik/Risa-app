package p447;

import j$.util.Objects;
import p255.C3359;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5345 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ long f20351;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f20352;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC5237 f20353;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f20354;

    public /* synthetic */ RunnableC5345(C5298 c5298, String str, long j, int i) {
        this.f20352 = i;
        this.f20354 = str;
        this.f20351 = j;
        this.f20353 = c5298;
    }

    public RunnableC5345(C5356 c5356, C5351 c5351, long j) {
        this.f20352 = 2;
        this.f20354 = c5351;
        this.f20351 = j;
        Objects.requireNonNull(c5356);
        this.f20353 = c5356;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f20352) {
            case 0:
                C5298 c5298 = (C5298) this.f20353;
                String str = (String) this.f20354;
                c5298.m10252();
                AbstractC3659.m7680(str);
                C3359 c3359 = c5298.f19978;
                boolean isEmpty = c3359.isEmpty();
                long j = this.f20351;
                if (isEmpty) {
                    c5298.f19979 = j;
                }
                Integer num = (Integer) c3359.get(str);
                if (num != null) {
                    c3359.put(str, Integer.valueOf(num.intValue() + 1));
                    return;
                }
                if (c3359.f13167 < 100) {
                    c3359.put(str, 1);
                    c5298.f19980.put(str, Long.valueOf(j));
                    return;
                } else {
                    C5344 c5344 = ((C5322) ((ᵎﹶ) c5298).ʾˋ).f20193;
                    C5322.m10556(c5344);
                    c5344.f20348.m10217("Too many ads visible");
                    return;
                }
            case 1:
                C5298 c52982 = (C5298) this.f20353;
                String str2 = (String) this.f20354;
                C5322 c5322 = (C5322) ((ᵎﹶ) c52982).ʾˋ;
                c52982.m10252();
                AbstractC3659.m7680(str2);
                C3359 c33592 = c52982.f19978;
                Integer num2 = (Integer) c33592.get(str2);
                if (num2 == null) {
                    C5344 c53442 = c5322.f20193;
                    C5322.m10556(c53442);
                    c53442.f20343.m10216(str2, "Call to endAdUnitExposure for unknown ad unit id");
                    return;
                }
                C5356 c5356 = c5322.f20209;
                C5344 c53443 = c5322.f20193;
                C5322.m10559(c5356);
                C5351 m10745 = c5356.m10745(false);
                int intValue = num2.intValue() - 1;
                if (intValue != 0) {
                    c33592.put(str2, Integer.valueOf(intValue));
                    return;
                }
                c33592.remove(str2);
                C3359 c33593 = c52982.f19980;
                Long l = (Long) c33593.get(str2);
                long j2 = this.f20351;
                if (l == null) {
                    C5322.m10556(c53443);
                    c53443.f20343.m10217("First ad unit exposure time was never set");
                } else {
                    long longValue = j2 - l.longValue();
                    c33593.remove(str2);
                    c52982.m10500(str2, longValue, m10745);
                }
                if (c33592.isEmpty()) {
                    long j3 = c52982.f19979;
                    if (j3 == 0) {
                        C5322.m10556(c53443);
                        c53443.f20343.m10217("First ad exposure time was never set");
                        return;
                    } else {
                        c52982.m10497(j2 - j3, m10745);
                        c52982.f19979 = 0L;
                        return;
                    }
                }
                return;
            default:
                C5356 c53562 = (C5356) this.f20353;
                c53562.m10739((C5351) this.f20354, false, this.f20351);
                c53562.f20389 = null;
                C5240 m10569 = ((C5322) ((ᵎﹶ) c53562).ʾˋ).m10569();
                m10569.m10252();
                m10569.m10526();
                m10569.m10306(new ﹶˎ(m10569, (C5351) null));
                return;
        }
    }
}

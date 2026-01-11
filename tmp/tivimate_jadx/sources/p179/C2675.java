package p179;

import java.util.List;

/* renamed from: ˋˋ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2675 extends AbstractC2741 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f10194;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ Runnable f10195;

    public /* synthetic */ C2675(Runnable runnable, int i) {
        this.f10194 = i;
        this.f10195 = runnable;
    }

    @Override // p179.AbstractC2741
    /* renamed from: ʼˎ */
    public final Object mo662(int i, int i2) {
        switch (this.f10194) {
            case 0:
                RunnableC2708 runnableC2708 = (RunnableC2708) this.f10195;
                Object obj = ((List) runnableC2708.f10302).get(i);
                Object obj2 = ((List) runnableC2708.f10299).get(i2);
                if (obj == null || obj2 == null) {
                    throw new AssertionError();
                }
                return ((AbstractC2741) ((C2733) runnableC2708.f10303).f10436.f18034).m6142(obj, obj2);
            default:
                RunnableC2708 runnableC27082 = (RunnableC2708) this.f10195;
                Object obj3 = ((List) runnableC27082.f10302).get(i);
                Object obj4 = ((List) runnableC27082.f10299).get(i2);
                if (obj3 == null || obj4 == null) {
                    throw new AssertionError();
                }
                return ((AbstractC2741) ((C2672) runnableC27082.f10303).f10170.f18034).m6142(obj3, obj4);
        }
    }

    @Override // p179.AbstractC2741
    /* renamed from: ʽ */
    public final boolean mo663(int i, int i2) {
        switch (this.f10194) {
            case 0:
                RunnableC2708 runnableC2708 = (RunnableC2708) this.f10195;
                Object obj = ((List) runnableC2708.f10302).get(i);
                Object obj2 = ((List) runnableC2708.f10299).get(i2);
                return (obj == null || obj2 == null) ? obj == null && obj2 == null : ((AbstractC2741) ((C2733) runnableC2708.f10303).f10436.f18034).m6143(obj, obj2);
            default:
                RunnableC2708 runnableC27082 = (RunnableC2708) this.f10195;
                Object obj3 = ((List) runnableC27082.f10302).get(i);
                Object obj4 = ((List) runnableC27082.f10299).get(i2);
                return (obj3 == null || obj4 == null) ? obj3 == null && obj4 == null : ((AbstractC2741) ((C2672) runnableC27082.f10303).f10170.f18034).m6143(obj3, obj4);
        }
    }

    @Override // p179.AbstractC2741
    /* renamed from: ٴﹶ */
    public final int mo664() {
        switch (this.f10194) {
            case 0:
                return ((List) ((RunnableC2708) this.f10195).f10299).size();
            default:
                return ((List) ((RunnableC2708) this.f10195).f10299).size();
        }
    }

    @Override // p179.AbstractC2741
    /* renamed from: ﹳٴ */
    public final boolean mo665(int i, int i2) {
        switch (this.f10194) {
            case 0:
                RunnableC2708 runnableC2708 = (RunnableC2708) this.f10195;
                Object obj = ((List) runnableC2708.f10302).get(i);
                Object obj2 = ((List) runnableC2708.f10299).get(i2);
                if (obj != null && obj2 != null) {
                    return ((AbstractC2741) ((C2733) runnableC2708.f10303).f10436.f18034).m6144(obj, obj2);
                }
                if (obj == null && obj2 == null) {
                    return true;
                }
                throw new AssertionError();
            default:
                RunnableC2708 runnableC27082 = (RunnableC2708) this.f10195;
                Object obj3 = ((List) runnableC27082.f10302).get(i);
                Object obj4 = ((List) runnableC27082.f10299).get(i2);
                if (obj3 != null && obj4 != null) {
                    return ((AbstractC2741) ((C2672) runnableC27082.f10303).f10170.f18034).m6144(obj3, obj4);
                }
                if (obj3 == null && obj4 == null) {
                    return true;
                }
                throw new AssertionError();
        }
    }

    @Override // p179.AbstractC2741
    /* renamed from: ﾞʻ */
    public final int mo666() {
        switch (this.f10194) {
            case 0:
                return ((List) ((RunnableC2708) this.f10195).f10302).size();
            default:
                return ((List) ((RunnableC2708) this.f10195).f10302).size();
        }
    }
}

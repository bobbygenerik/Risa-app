package p447;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ﹶᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5352 extends FutureTask implements Comparable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f20373;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f20374;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C5215 f20375;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f20376;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5352(C5215 c5215, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.f20375 = c5215;
        long andIncrement = C5215.f19583.getAndIncrement();
        this.f20374 = andIncrement;
        this.f20373 = str;
        this.f20376 = z;
        if (andIncrement == Long.MAX_VALUE) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) c5215).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10217("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5352(C5215 c5215, Callable callable, boolean z) {
        super(callable);
        this.f20375 = c5215;
        long andIncrement = C5215.f19583.getAndIncrement();
        this.f20374 = andIncrement;
        this.f20373 = "Task exception on worker thread";
        this.f20376 = z;
        if (andIncrement == Long.MAX_VALUE) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) c5215).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10217("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C5352 c5352 = (C5352) obj;
        boolean z = c5352.f20376;
        boolean z2 = this.f20376;
        if (z2 != z) {
            return !z2 ? 1 : -1;
        }
        long j = c5352.f20374;
        long j2 = this.f20374;
        if (j2 < j) {
            return -1;
        }
        if (j2 > j) {
            return 1;
        }
        C5344 c5344 = ((C5322) ((ᵎﹶ) this.f20375).ʾˋ).f20193;
        C5322.m10556(c5344);
        c5344.f20345.m10216(Long.valueOf(j2), "Two tasks share the same index. index");
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        C5344 c5344 = ((C5322) ((ᵎﹶ) this.f20375).ʾˋ).f20193;
        C5322.m10556(c5344);
        c5344.f20343.m10216(th, this.f20373);
        super.setException(th);
    }
}

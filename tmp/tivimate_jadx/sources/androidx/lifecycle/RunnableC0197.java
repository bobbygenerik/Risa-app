package androidx.lifecycle;

import com.bumptech.glide.C0229;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;
import p032.C1172;
import p105.C1924;
import p105.C1929;
import p137.C2282;

/* renamed from: androidx.lifecycle.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0197 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f1098;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f1099;

    public /* synthetic */ RunnableC0197(int i, Object obj) {
        this.f1098 = i;
        this.f1099 = obj;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m731() {
        C0229 c0229 = (C0229) this.f1099;
        Map map = null;
        ((AtomicReference) c0229.f1643).set(null);
        synchronized (c0229) {
            try {
                if (((AtomicMarkableReference) c0229.f1646).isMarked()) {
                    map = ((C1924) ((AtomicMarkableReference) c0229.f1646).getReference()).m4868();
                    AtomicMarkableReference atomicMarkableReference = (AtomicMarkableReference) c0229.f1646;
                    atomicMarkableReference.set((C1924) atomicMarkableReference.getReference(), false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (map != null) {
            C2282 c2282 = (C2282) c0229.f1645;
            ((C1929) c2282.f8929).m4891((String) c2282.f8924, map, c0229.f1644);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m732() {
        C1172 c1172 = (C1172) this.f1099;
        synchronized (c1172.f4550) {
            try {
                if (c1172.f4542) {
                    return;
                }
                long j = c1172.f4551 - 1;
                c1172.f4551 = j;
                if (j > 0) {
                    return;
                }
                if (j < 0) {
                    c1172.m3688(new IllegalStateException());
                } else {
                    c1172.m3689();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:143:0x02a1  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 2096
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.RunnableC0197.run():void");
    }
}

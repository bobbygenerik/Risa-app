package p179;

import android.os.Trace;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
import p114.AbstractC1984;
import ʻٴ.ˑﹳ;

/* renamed from: ˋˋ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2728 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long f10422;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList f10423 = new ArrayList();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ArrayList f10424 = new ArrayList();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f10425;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final ThreadLocal f10421 = new ThreadLocal();

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final ˑﹳ f10420 = new ˑﹳ(8);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static AbstractC2673 m6124(RecyclerView recyclerView, int i, long j) {
        int i2 = recyclerView.f1482.ᵎˊ();
        for (int i3 = 0; i3 < i2; i3++) {
            AbstractC2673 m927 = RecyclerView.m927(recyclerView.f1482.ٴʼ(i3));
            if (m927.f10175 == i && !m927.m6015()) {
                return null;
            }
        }
        C2666 c2666 = recyclerView.f1464;
        if (j == Long.MAX_VALUE) {
            try {
                if (AbstractC1984.m4970()) {
                    Trace.beginSection("RV Prefetch forced - needed next frame");
                }
            } catch (Throwable th) {
                recyclerView.m975(false);
                Trace.endSection();
                throw th;
            }
        }
        recyclerView.m950();
        AbstractC2673 m5960 = c2666.m5960(i, j);
        if (m5960 != null) {
            if (!m5960.m6013() || m5960.m6015()) {
                c2666.m5959(m5960, false);
            } else {
                c2666.m5948(m5960.f10176);
            }
        }
        recyclerView.m975(false);
        Trace.endSection();
        return m5960;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.f10423;
        try {
            Trace.beginSection("RV Prefetch");
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long j = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j = Math.max(recyclerView.getDrawingTime(), j);
                    }
                }
                if (j != 0) {
                    m6125(TimeUnit.MILLISECONDS.toNanos(j) + this.f10422);
                }
            }
        } finally {
            this.f10425 = 0L;
            Trace.endSection();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6125(long j) {
        C2692 c2692;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        C2692 c26922;
        ArrayList arrayList = this.f10423;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i3);
            int windowVisibility = recyclerView3.getWindowVisibility();
            C2676 c2676 = recyclerView3.f1498;
            if (windowVisibility == 0) {
                c2676.m6022(recyclerView3, false);
                i2 += c2676.f10197;
            }
        }
        ArrayList arrayList2 = this.f10424;
        arrayList2.ensureCapacity(i2);
        int i4 = 0;
        int i5 = 0;
        while (i4 < size) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i4);
            if (recyclerView4.getWindowVisibility() == 0) {
                C2676 c26762 = recyclerView4.f1498;
                int abs = Math.abs(c26762.f10196) + Math.abs(c26762.f10198);
                for (int i6 = i; i6 < c26762.f10197 * 2; i6 += 2) {
                    if (i5 >= arrayList2.size()) {
                        Object obj = new Object();
                        arrayList2.add(obj);
                        c26922 = obj;
                    } else {
                        c26922 = (C2692) arrayList2.get(i5);
                    }
                    int[] iArr = c26762.f10199;
                    int i7 = iArr[i6 + 1];
                    c26922.f10258 = i7 <= abs;
                    c26922.f10257 = abs;
                    c26922.f10254 = i7;
                    c26922.f10255 = recyclerView4;
                    c26922.f10256 = iArr[i6];
                    i5++;
                }
            }
            i4++;
            i = 0;
        }
        Collections.sort(arrayList2, f10420);
        for (int i8 = 0; i8 < arrayList2.size() && (recyclerView = (c2692 = (C2692) arrayList2.get(i8)).f10255) != null; i8++) {
            AbstractC2673 m6124 = m6124(recyclerView, c2692.f10256, c2692.f10258 ? Long.MAX_VALUE : j);
            if (m6124 != null && m6124.f10187 != null && m6124.m6013() && !m6124.m6015() && (recyclerView2 = (RecyclerView) m6124.f10187.get()) != null) {
                if (recyclerView2.f1490 && recyclerView2.f1482.ᵎˊ() != 0) {
                    C2666 c2666 = recyclerView2.f1464;
                    AbstractC2722 abstractC2722 = recyclerView2.f1492;
                    if (abstractC2722 != null) {
                        abstractC2722.m6108();
                    }
                    AbstractC2669 abstractC2669 = recyclerView2.f1521;
                    if (abstractC2669 != null) {
                        abstractC2669.mo499(c2666);
                        recyclerView2.f1521.m5980(c2666);
                    }
                    c2666.f10126.clear();
                    c2666.m5955();
                }
                C2676 c26763 = recyclerView2.f1498;
                c26763.m6022(recyclerView2, true);
                if (c26763.f10197 != 0) {
                    try {
                        Trace.beginSection(j == Long.MAX_VALUE ? "RV Nested Prefetch" : "RV Nested Prefetch forced - needed next frame");
                        C2723 c2723 = recyclerView2.f1516;
                        AbstractC2727 abstractC2727 = recyclerView2.f1474;
                        c2723.f10371 = 1;
                        c2723.f10374 = abstractC2727.mo611();
                        c2723.f10376 = false;
                        c2723.f10378 = false;
                        c2723.f10367 = false;
                        for (int i9 = 0; i9 < c26763.f10197 * 2; i9 += 2) {
                            m6124(recyclerView2, c26763.f10199[i9], j);
                        }
                        Trace.endSection();
                        c2692.f10258 = false;
                        c2692.f10257 = 0;
                        c2692.f10254 = 0;
                        c2692.f10255 = null;
                        c2692.f10256 = 0;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            c2692.f10258 = false;
            c2692.f10257 = 0;
            c2692.f10254 = 0;
            c2692.f10255 = null;
            c2692.f10256 = 0;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6126(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.f1499) {
            if (RecyclerView.f1450 && !this.f10423.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f10425 == 0) {
                this.f10425 = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        C2676 c2676 = recyclerView.f1498;
        c2676.f10198 = i;
        c2676.f10196 = i2;
    }
}

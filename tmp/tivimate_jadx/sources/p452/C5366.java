package p452;

import android.support.v4.media.session.ⁱˊ;
import java.util.ArrayList;
import java.util.TimeZone;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p292.C3651;
import p329.InterfaceC4104;
import p394.AbstractC4712;

/* renamed from: ﾞʿ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5366 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f20425;

    /* renamed from: ˈ, reason: contains not printable characters */
    public AbstractC5367 f20426;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ArrayList f20427 = new ArrayList();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f20428;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5365 f20429;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f20430;

    public C5366(C5365 c5365, String str) {
        this.f20429 = c5365;
        this.f20428 = str;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m10764(C5366 c5366, String str, InterfaceC4104 interfaceC4104) {
        c5366.getClass();
        c5366.m10765(new C3651(str, interfaceC4104), 0L);
    }

    public final String toString() {
        return this.f20428;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m10765(AbstractC5367 abstractC5367, long j) {
        synchronized (this.f20429) {
            if (!this.f20425) {
                if (m10766(abstractC5367, j, false)) {
                    this.f20429.m10760(this);
                }
            } else if (abstractC5367.f20433) {
                Logger logger = this.f20429.f20422;
                if (logger.isLoggable(Level.FINE)) {
                    ⁱˊ.ﹳٴ(logger, abstractC5367, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                Logger logger2 = this.f20429.f20422;
                if (logger2.isLoggable(Level.FINE)) {
                    ⁱˊ.ﹳٴ(logger2, abstractC5367, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m10766(AbstractC5367 abstractC5367, long j, boolean z) {
        Logger logger = this.f20429.f20422;
        C5366 c5366 = abstractC5367.f20431;
        if (c5366 != this) {
            if (c5366 != null) {
                throw new IllegalStateException("task is in multiple queues");
            }
            abstractC5367.f20431 = this;
        }
        long nanoTime = System.nanoTime();
        long j2 = nanoTime + j;
        ArrayList arrayList = this.f20427;
        int indexOf = arrayList.indexOf(abstractC5367);
        if (indexOf != -1) {
            if (abstractC5367.f20432 <= j2) {
                if (logger.isLoggable(Level.FINE)) {
                    ⁱˊ.ﹳٴ(logger, abstractC5367, this, "already scheduled");
                    return false;
                }
            }
            arrayList.remove(indexOf);
        }
        abstractC5367.f20432 = j2;
        if (logger.isLoggable(Level.FINE)) {
            ⁱˊ.ﹳٴ(logger, abstractC5367, this, z ? "run again after ".concat(ⁱˊ.ﾞᴵ(j2 - nanoTime)) : "scheduled after ".concat(ⁱˊ.ﾞᴵ(j2 - nanoTime)));
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i = -1;
                break;
            }
            Object obj = arrayList.get(i2);
            i2++;
            if (((AbstractC5367) obj).f20432 - nanoTime > j) {
                break;
            }
            i++;
        }
        if (i == -1) {
            i = arrayList.size();
        }
        arrayList.add(i, abstractC5367);
        return i == 0;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m10767() {
        AbstractC5367 abstractC5367 = this.f20426;
        if (abstractC5367 != null && abstractC5367.f20433) {
            this.f20430 = true;
        }
        ArrayList arrayList = this.f20427;
        boolean z = false;
        for (int size = arrayList.size() - 1; -1 < size; size--) {
            if (((AbstractC5367) arrayList.get(size)).f20433) {
                Logger logger = this.f20429.f20422;
                AbstractC5367 abstractC53672 = (AbstractC5367) arrayList.get(size);
                if (logger.isLoggable(Level.FINE)) {
                    ⁱˊ.ﹳٴ(logger, abstractC53672, this, "canceled");
                }
                arrayList.remove(size);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10768() {
        C5365 c5365 = this.f20429;
        TimeZone timeZone = AbstractC4712.f17804;
        synchronized (c5365) {
            if (m10767()) {
                this.f20429.m10760(this);
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m10769() {
        C5365 c5365 = this.f20429;
        TimeZone timeZone = AbstractC4712.f17804;
        synchronized (c5365) {
            this.f20425 = true;
            if (m10767()) {
                this.f20429.m10760(this);
            }
        }
    }
}

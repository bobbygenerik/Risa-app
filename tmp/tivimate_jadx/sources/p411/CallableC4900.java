package p411;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.measurement.ᵎ;
import j$.util.DesugarCollections;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Stack;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import p070.C1629;
import p105.C1927;
import p122.AbstractC2037;
import p122.C2054;
import p122.C2061;
import p122.C2067;
import p122.C2069;
import p122.C2075;
import p122.C2082;
import p122.C2115;
import p131.ExecutorC2193;
import p137.C2282;
import p220.C3029;
import p220.C3032;
import p234.C3194;
import p234.C3195;
import p252.C3310;
import p262.C3433;
import p404.C4799;
import p430.C5110;
import ˏˆ.ﹳٴ;

/* renamed from: ﹳˎ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class CallableC4900 implements Callable {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ Thread f18276;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ C1629 f18277;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C4894 f18278;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Throwable f18279;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ long f18280;

    public CallableC4900(C4894 c4894, long j, Throwable th, Thread thread, C1629 c1629) {
        this.f18278 = c4894;
        this.f18280 = j;
        this.f18279 = th;
        this.f18276 = thread;
        this.f18277 = c1629;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1, types: [ˈˋ.ˈʿ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v17, types: [ⁱʽ.ﹳٴ, java.lang.Object, ˏـ.ﾞᴵ] */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        Thread thread;
        long j = this.f18280;
        long j2 = j / 1000;
        C4894 c4894 = this.f18278;
        NavigableSet m7032 = ((C3195) c4894.f18252.f18053).m7032();
        String str = !m7032.isEmpty() ? (String) m7032.first() : null;
        if (str == null) {
            return ᵎ.ᵔᵢ((Object) null);
        }
        c4894.f18249.m7337();
        C4799 c4799 = c4894.f18252;
        c4799.getClass();
        "Persisting fatal event for session ".concat(str);
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
        }
        C4907 c4907 = (C4907) c4799.f18050;
        Context context = c4907.f18322;
        int i = context.getResources().getConfiguration().orientation;
        C3433 c3433 = c4907.f18319;
        Stack stack = new Stack();
        for (Throwable th = this.f18279; th != null; th = th.getCause()) {
            stack.push(th);
        }
        ﹳٴ r20 = null;
        while (!stack.isEmpty()) {
            Throwable th2 = (Throwable) stack.pop();
            r20 = new ﹳٴ(th2.getLocalizedMessage(), th2.getClass().getName(), c3433.mo7344(th2.getStackTrace()), r20, 26);
        }
        ﹳٴ r15 = r20;
        ?? obj = new Object();
        obj.f8062 = "crash";
        obj.f8063 = j2;
        obj.f8061 = (byte) (obj.f8061 | 1);
        AbstractC2037 m7126 = C3310.f12736.m7126(context);
        int i2 = ((C2054) m7126).f8018;
        Boolean valueOf = i2 > 0 ? Boolean.valueOf(i2 != 100) : null;
        ArrayList m7125 = C3310.m7125(context);
        byte b = (byte) 1;
        ArrayList arrayList = new ArrayList();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) r15.ˈٴ;
        Thread thread2 = this.f18276;
        String name = thread2.getName();
        if (name == null) {
            throw new NullPointerException("Null name");
        }
        byte b2 = (byte) 1;
        List m9713 = C4907.m9713(stackTraceElementArr, 4);
        if (m9713 == null) {
            throw new NullPointerException("Null frames");
        }
        if (b2 != 1) {
            StringBuilder sb = new StringBuilder();
            if (b2 == 0) {
                sb.append(" importance");
            }
            throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
        }
        String str2 = str;
        arrayList.add(new C2061(4, name, m9713));
        for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
            Thread key = entry.getKey();
            if (key.equals(thread2)) {
                thread = thread2;
            } else {
                StackTraceElement[] mo7344 = c3433.mo7344(entry.getValue());
                String name2 = key.getName();
                if (name2 == null) {
                    throw new NullPointerException("Null name");
                }
                List m97132 = C4907.m9713(mo7344, 0);
                if (m97132 == null) {
                    throw new NullPointerException("Null frames");
                }
                if (b2 != 1) {
                    StringBuilder sb2 = new StringBuilder();
                    if (b2 == 0) {
                        sb2.append(" importance");
                    }
                    throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb2));
                }
                thread = thread2;
                arrayList.add(new C2061(0, name2, m97132));
            }
            thread2 = thread;
        }
        List unmodifiableList = DesugarCollections.unmodifiableList(arrayList);
        C2082 m9712 = C4907.m9712(r15, 0);
        C2115 m9714 = C4907.m9714();
        List m9716 = c4907.m9716();
        if (m9716 == null) {
            throw new NullPointerException("Null binaries");
        }
        C2067 c2067 = new C2067(unmodifiableList, m9712, null, m9714, m9716);
        if (b != 1) {
            StringBuilder sb3 = new StringBuilder();
            if (b == 0) {
                sb3.append(" uiOrientation");
            }
            throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb3));
        }
        obj.f8058 = new C2069(c2067, null, null, valueOf, m7126, m7125, i);
        obj.f8059 = c4907.m9715(i);
        C2075 m5076 = obj.m5076();
        C1927 c1927 = (C1927) c4799.f18051;
        C2282 c2282 = (C2282) c4799.f18054;
        ((C3195) c4799.f18053).m7033(C4799.m9587(C4799.m9588(m5076, c1927, c2282, C5110.f19215), c2282), str2, true);
        try {
            C3194 c3194 = c4894.f18256;
            String str3 = ".ae" + j;
            c3194.getClass();
            if (!new File((File) c3194.f12213, str3).createNewFile()) {
                throw new IOException("Create new file failed.");
            }
        } catch (IOException e) {
        }
        C1629 c1629 = this.f18277;
        c4894.m9693(false, c1629, false);
        c4894.m9689(new C4897().f18269, Boolean.FALSE);
        if (!c4894.f18260.m3489()) {
            return ᵎ.ᵔᵢ((Object) null);
        }
        C3029 c3029 = ((C3032) ((AtomicReference) c1629.f6481).get()).f11560;
        ExecutorC2193 executorC2193 = c4894.f18254.f8651;
        ?? obj2 = new Object();
        obj2.f17126 = this;
        return c3029.m6569(executorC2193, obj2);
    }
}

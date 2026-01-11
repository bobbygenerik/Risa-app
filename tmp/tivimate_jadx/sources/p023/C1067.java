package p023;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p126.InterfaceC2139;
import p316.AbstractC3902;
import p417.InterfaceC4930;
import p417.InterfaceC4932;
import p430.AbstractC5099;
import p430.C5097;
import p435.AbstractC5143;
import p436.AbstractC5160;
import p436.C5158;
import p436.InterfaceC5165;

/* renamed from: ʼˋ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1067 implements InterfaceC4932, InterfaceC5165 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public InterfaceC2139 f4210;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC4932 f4211;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Throwable f4212;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C5158 f4213;

    public C1067(InterfaceC4932 interfaceC4932) {
        C5158 m10154 = AbstractC5160.m10154();
        this.f4211 = interfaceC4932;
        this.f4213 = m10154;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f4211.close();
    }

    public final String toString() {
        return this.f4211.toString();
    }

    @Override // p436.InterfaceC5165
    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object mo3413(AbstractC3902 abstractC3902) {
        return this.f4213.mo3413(abstractC3902);
    }

    @Override // p436.InterfaceC5165
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean mo3414() {
        return this.f4213.mo3414();
    }

    @Override // p417.InterfaceC4932
    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final InterfaceC4930 mo3415(String str) {
        return this.f4211.mo3415(str);
    }

    @Override // p436.InterfaceC5165
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo3416(Object obj) {
        this.f4213.mo3416(null);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m3417(StringBuilder sb) {
        Iterable iterable;
        if (this.f4210 == null && this.f4212 == null) {
            sb.append("\t\tStatus: Free connection");
            sb.append('\n');
            return;
        }
        sb.append("\t\tStatus: Acquired connection");
        sb.append('\n');
        InterfaceC2139 interfaceC2139 = this.f4210;
        if (interfaceC2139 != null) {
            sb.append("\t\tCoroutine: " + interfaceC2139);
            sb.append('\n');
        }
        Throwable th = this.f4212;
        if (th != null) {
            sb.append("\t\tAcquired:");
            sb.append('\n');
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            printWriter.flush();
            List m10109 = AbstractC5143.m10109(stringWriter.toString());
            int size = m10109.size() - 1;
            if (size <= 0) {
                iterable = C5097.f19202;
            } else if (size == 1) {
                iterable = Collections.singletonList(AbstractC5099.m10028(m10109));
            } else {
                ArrayList arrayList = new ArrayList(size);
                if (m10109 instanceof RandomAccess) {
                    int size2 = m10109.size();
                    for (int i = 1; i < size2; i++) {
                        arrayList.add(m10109.get(i));
                    }
                } else {
                    ListIterator listIterator = m10109.listIterator(1);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                iterable = arrayList;
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                sb.append("\t\t" + ((String) it.next()));
                sb.append('\n');
            }
        }
    }
}

package p052;

import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: ʽᴵ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1426 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f5576;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ C1407 f5577;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f5579 = new ArrayList();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayDeque f5578 = new ArrayDeque();

    public C1426(C1407 c1407) {
        this.f5577 = c1407;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4189(boolean z) {
        this.f5578.removeLast();
        if (this.f5578.isEmpty()) {
            this.f5577.f5512.remove();
            if (z) {
                synchronized (this.f5577.f5511) {
                    try {
                        int size = this.f5579.size();
                        for (int i = 0; i < size; i++) {
                            C1401 c1401 = (C1401) this.f5579.get(i);
                            AbstractC1430 abstractC1430 = (AbstractC1430) this.f5577.f5511.put(c1401.f5489, c1401.f5490);
                            if (abstractC1430 != null) {
                                c1401.f5490 = abstractC1430;
                                this.f5577.f5511.put(c1401.f5489, abstractC1430);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final IllegalArgumentException m4190(IllegalArgumentException illegalArgumentException) {
        if (!this.f5576) {
            this.f5576 = true;
            ArrayDeque arrayDeque = this.f5578;
            if (arrayDeque.size() != 1 || ((C1401) arrayDeque.getFirst()).f5491 != null) {
                StringBuilder sb = new StringBuilder(illegalArgumentException.getMessage());
                Iterator descendingIterator = arrayDeque.descendingIterator();
                while (descendingIterator.hasNext()) {
                    C1401 c1401 = (C1401) descendingIterator.next();
                    sb.append("\nfor ");
                    Type type = c1401.f5492;
                    String str = c1401.f5491;
                    sb.append(type);
                    if (str != null) {
                        sb.append(' ');
                        sb.append(str);
                    }
                }
                return new IllegalArgumentException(sb.toString(), illegalArgumentException);
            }
        }
        return illegalArgumentException;
    }
}

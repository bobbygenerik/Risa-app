package p188;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import p003.C0779;
import p003.C0783;
import p055.AbstractC1445;
import p188.C2845;
import p266.InterfaceC3457;
import p305.AbstractC3712;
import p305.C3711;
import p392.C4660;
import p392.C4674;
import p392.C4679;
import p392.C4683;
import p392.C4695;
import p420.AbstractC4990;
import p420.C4935;
import p420.C4966;
import p420.C4979;
import p420.InterfaceC4944;
import p420.InterfaceC4945;
import p420.InterfaceC4975;
import ˊⁱ.ˑﹳ;
import ﹳˋ.ٴﹶ;

/* renamed from: ˋⁱ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2845 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Object f10680;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f10681;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Object f10682;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f10683;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object f10684;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public Object f10685;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object f10686;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Object f10687;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f10688;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f10689;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public Object f10690;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object f10691;

    public C2845() {
        this.f10688 = new C2850[4];
        this.f10681 = new Matrix[4];
        this.f10683 = new Matrix[4];
        this.f10684 = new PointF();
        this.f10691 = new Path();
        this.f10686 = new Path();
        this.f10682 = new C2850();
        this.f10685 = new float[2];
        this.f10690 = new float[2];
        this.f10687 = new Path();
        this.f10680 = new Path();
        this.f10689 = true;
        for (int i = 0; i < 4; i++) {
            ((C2850[]) this.f10688)[i] = new C2850();
            ((Matrix[]) this.f10681)[i] = new Matrix();
            ((Matrix[]) this.f10683)[i] = new Matrix();
        }
    }

    public C2845(C4683 c4683, C0779 c0779, C3711 c3711, C0783 c0783) {
        this.f10688 = c0783;
        this.f10691 = c4683;
        this.f10685 = new C4979();
        this.f10683 = new IdentityHashMap();
        this.f10684 = new HashMap();
        this.f10681 = new ArrayList();
        this.f10680 = c0779;
        this.f10682 = c3711;
        this.f10686 = new HashMap();
        this.f10687 = new HashSet();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void m6333(int i, int i2) {
        ArrayList arrayList = (ArrayList) this.f10681;
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            C4660 c4660 = (C4660) arrayList.remove(i3);
            ((HashMap) this.f10684).remove(c4660.f17475);
            int i4 = -c4660.f17476.f18378.f18403.mo4222();
            for (int i5 = i3; i5 < arrayList.size(); i5++) {
                ((C4660) arrayList.get(i5)).f17473 += i4;
            }
            c4660.f17474 = true;
            if (this.f10689) {
                m6336(c4660);
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public AbstractC1445 m6334() {
        ArrayList arrayList = (ArrayList) this.f10681;
        if (arrayList.isEmpty()) {
            return AbstractC1445.f5630;
        }
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            C4660 c4660 = (C4660) arrayList.get(i2);
            c4660.f17473 = i;
            i += c4660.f17476.f18378.f18403.mo4222();
        }
        return new C4679(arrayList, (C4979) this.f10685);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m6335() {
        Iterator it = ((HashSet) this.f10687).iterator();
        while (it.hasNext()) {
            C4660 c4660 = (C4660) it.next();
            if (c4660.f17472.isEmpty()) {
                C4695 c4695 = (C4695) ((HashMap) this.f10686).get(c4660);
                if (c4695 != null) {
                    c4695.f17733.mo9799(c4695.f17732);
                }
                it.remove();
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m6336(C4660 c4660) {
        if (c4660.f17474 && c4660.f17472.isEmpty()) {
            C4695 c4695 = (C4695) ((HashMap) this.f10686).remove(c4660);
            c4695.getClass();
            C4674 c4674 = c4695.f17731;
            InterfaceC4975 interfaceC4975 = c4695.f17733;
            interfaceC4975.mo9801(c4695.f17732);
            interfaceC4975.mo9796(c4674);
            interfaceC4975.mo9798(c4674);
            ((HashSet) this.f10687).remove(c4660);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [ⁱי.ᵔٴ, ﹳᵢ.ʾˋ] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void m6337(C4660 c4660) {
        C4935 c4935 = c4660.f17476;
        ?? r1 = new InterfaceC4944() { // from class: ⁱי.ᵔٴ
            @Override // p420.InterfaceC4944
            /* renamed from: ﹳٴ, reason: contains not printable characters */
            public final void mo9405(AbstractC4990 abstractC4990, AbstractC1445 abstractC1445) {
                C3711 c3711 = ((C4683) C2845.this.f10691).f17615;
                c3711.m7751(2);
                c3711.m7752(22);
            }
        };
        C4674 c4674 = new C4674(this, c4660);
        ((HashMap) this.f10686).put(c4660, new C4695(c4935, r1, c4674));
        String str = AbstractC3712.f14481;
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        c4935.mo9800(new Handler(myLooper, null), c4674);
        Looper myLooper2 = Looper.myLooper();
        if (myLooper2 == null) {
            myLooper2 = Looper.getMainLooper();
        }
        c4935.mo9803(new Handler(myLooper2, null), c4674);
        c4935.mo9802(r1, (InterfaceC3457) this.f10690, (C0783) this.f10688);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void m6338(InterfaceC4945 interfaceC4945) {
        IdentityHashMap identityHashMap = (IdentityHashMap) this.f10683;
        C4660 c4660 = (C4660) identityHashMap.remove(interfaceC4945);
        c4660.getClass();
        c4660.f17476.mo5101(interfaceC4945);
        c4660.f17472.remove(((C4966) interfaceC4945).f18499);
        if (!identityHashMap.isEmpty()) {
            m6335();
        }
        m6336(c4660);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m6339(C2862 c2862, float[] fArr, float f, RectF rectF, ˑﹳ r26, Path path) {
        int i;
        boolean z;
        float f2;
        ˑﹳ r8;
        boolean z2;
        ˑﹳ r3 = r26;
        Matrix[] matrixArr = (Matrix[]) this.f10683;
        float[] fArr2 = (float[]) this.f10685;
        C2850[] c2850Arr = (C2850[]) this.f10688;
        Matrix[] matrixArr2 = (Matrix[]) this.f10681;
        path.rewind();
        Path path2 = (Path) this.f10691;
        path2.rewind();
        Path path3 = (Path) this.f10686;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i2 = 0;
        while (true) {
            z = 0;
            if (i2 >= 4) {
                break;
            }
            PointF pointF = (PointF) this.f10684;
            InterfaceC2852 c2846 = fArr == null ? i2 != 1 ? i2 != 2 ? i2 != 3 ? c2862.f10769 : c2862.f10762 : c2862.f10765 : c2862.f10764 : new C2846(fArr[i2]);
            ٴﹶ r13 = i2 != 1 ? i2 != 2 ? i2 != 3 ? c2862.f10766 : c2862.f10767 : c2862.f10761 : c2862.f10759;
            C2850 c2850 = c2850Arr[i2];
            r13.getClass();
            Matrix[] matrixArr3 = matrixArr;
            r13.ʻٴ(c2850, f, c2846.mo6342(rectF));
            int i3 = i2 + 1;
            float f3 = (i3 % 4) * 90;
            matrixArr2[i2].reset();
            if (i2 == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i2 == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i2 != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f3);
            C2850 c28502 = c2850Arr[i2];
            fArr2[0] = c28502.f10711;
            fArr2[1] = c28502.f10707;
            matrixArr2[i2].mapPoints(fArr2);
            matrixArr3[i2].reset();
            matrixArr3[i2].setTranslate(fArr2[0], fArr2[1]);
            matrixArr3[i2].preRotate(f3);
            i2 = i3;
            matrixArr = matrixArr3;
        }
        Matrix[] matrixArr4 = matrixArr;
        int i4 = 0;
        for (i = 4; i4 < i; i = 4) {
            C2850 c28503 = c2850Arr[i4];
            c28503.getClass();
            fArr2[z] = 0.0f;
            fArr2[1] = c28503.f10712;
            matrixArr2[i4].mapPoints(fArr2);
            if (i4 == 0) {
                path.moveTo(fArr2[z], fArr2[1]);
            } else {
                path.lineTo(fArr2[z], fArr2[1]);
            }
            c2850Arr[i4].m6354(matrixArr2[i4], path);
            if (r3 != null) {
                C2850 c28504 = c2850Arr[i4];
                Matrix matrix = matrixArr2[i4];
                C2844 c2844 = (C2844) r3.ᴵˊ;
                BitSet bitSet = c2844.f10673;
                c28504.getClass();
                f2 = 0.0f;
                bitSet.set(i4, z);
                AbstractC2858[] abstractC2858Arr = c2844.f10651;
                c28504.m6355(c28504.f10709);
                abstractC2858Arr[i4] = new C2864(new ArrayList(c28504.f10710), new Matrix(matrix));
            } else {
                f2 = 0.0f;
            }
            Path path4 = (Path) this.f10687;
            C2850 c28505 = (C2850) this.f10682;
            int i5 = i4 + 1;
            int i6 = i5 % 4;
            C2850 c28506 = c2850Arr[i4];
            fArr2[0] = c28506.f10711;
            fArr2[1] = c28506.f10707;
            matrixArr2[i4].mapPoints(fArr2);
            float[] fArr3 = (float[]) this.f10690;
            C2850 c28507 = c2850Arr[i6];
            c28507.getClass();
            fArr3[0] = f2;
            fArr3[1] = c28507.f10712;
            matrixArr2[i6].mapPoints(fArr3);
            C2850[] c2850Arr2 = c2850Arr;
            Matrix[] matrixArr5 = matrixArr2;
            float max = Math.max(((float) Math.hypot(fArr2[0] - fArr3[0], fArr2[1] - fArr3[1])) - 0.001f, f2);
            C2850 c28508 = c2850Arr2[i4];
            fArr2[0] = c28508.f10711;
            fArr2[1] = c28508.f10707;
            matrixArr5[i4].mapPoints(fArr2);
            if (i4 == 1 || i4 == 3) {
                Math.abs(rectF.centerX() - fArr2[0]);
            } else {
                Math.abs(rectF.centerY() - fArr2[1]);
            }
            c28505.m6353(0.0f, 270.0f, 0.0f);
            (i4 != 1 ? i4 != 2 ? i4 != 3 ? c2862.f10760 : c2862.f10758 : c2862.f10768 : c2862.f10763).getClass();
            c28505.m6352(max, 0.0f);
            path4.reset();
            c28505.m6354(matrixArr4[i4], path4);
            if (this.f10689 && (m6341(path4, i4) || m6341(path4, i6))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr2[0] = 0.0f;
                fArr2[1] = c28505.f10712;
                matrixArr4[i4].mapPoints(fArr2);
                path2.moveTo(fArr2[0], fArr2[1]);
                c28505.m6354(matrixArr4[i4], path2);
            } else {
                c28505.m6354(matrixArr4[i4], path);
            }
            if (r26 != null) {
                Matrix matrix2 = matrixArr4[i4];
                r8 = r26;
                C2844 c28442 = (C2844) r8.ᴵˊ;
                z2 = false;
                c28442.f10673.set(i4 + 4, false);
                AbstractC2858[] abstractC2858Arr2 = c28442.f10657;
                c28505.m6355(c28505.f10709);
                abstractC2858Arr2[i4] = new C2864(new ArrayList(c28505.f10710), new Matrix(matrix2));
            } else {
                r8 = r26;
                z2 = false;
            }
            z = z2;
            r3 = r8;
            i4 = i5;
            c2850Arr = c2850Arr2;
            matrixArr2 = matrixArr5;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractC1445 m6340(int i, ArrayList arrayList, C4979 c4979) {
        ArrayList arrayList2 = (ArrayList) this.f10681;
        if (!arrayList.isEmpty()) {
            this.f10685 = c4979;
            for (int i2 = i; i2 < arrayList.size() + i; i2++) {
                C4660 c4660 = (C4660) arrayList.get(i2 - i);
                if (i2 > 0) {
                    C4660 c46602 = (C4660) arrayList2.get(i2 - 1);
                    c4660.f17473 = c46602.f17476.f18378.f18403.mo4222() + c46602.f17473;
                    c4660.f17474 = false;
                    c4660.f17472.clear();
                } else {
                    c4660.f17473 = 0;
                    c4660.f17474 = false;
                    c4660.f17472.clear();
                }
                int mo4222 = c4660.f17476.f18378.f18403.mo4222();
                for (int i3 = i2; i3 < arrayList2.size(); i3++) {
                    ((C4660) arrayList2.get(i3)).f17473 += mo4222;
                }
                arrayList2.add(i2, c4660);
                ((HashMap) this.f10684).put(c4660.f17475, c4660);
                if (this.f10689) {
                    m6337(c4660);
                    if (((IdentityHashMap) this.f10683).isEmpty()) {
                        ((HashSet) this.f10687).add(c4660);
                    } else {
                        C4695 c4695 = (C4695) ((HashMap) this.f10686).get(c4660);
                        if (c4695 != null) {
                            c4695.f17733.mo9799(c4695.f17732);
                        }
                    }
                }
            }
        }
        return m6334();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean m6341(Path path, int i) {
        Path path2 = (Path) this.f10680;
        path2.reset();
        ((C2850[]) this.f10688)[i].m6354(((Matrix[]) this.f10681)[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        return !rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f);
    }
}

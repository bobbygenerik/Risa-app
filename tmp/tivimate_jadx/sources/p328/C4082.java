package p328;

import android.util.Property;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import p010.AbstractC0844;

/* renamed from: ᴵᵔ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4082 extends C4074 {

    /* renamed from: ʿ, reason: contains not printable characters */
    public Property f15550;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public String f15551;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public WeakReference f15552;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵᵔ.ﹳᐧ, ᴵᵔ.ـˆ] */
    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static C4082 m8338(Object obj, Property property, float... fArr) {
        ?? c4074 = new C4074();
        c4074.m8339(obj);
        C4066[] c4066Arr = c4074.f15521;
        if (c4066Arr != null) {
            C4066 c4066 = c4066Arr[0];
            String str = c4066.f15476;
            c4066.f15482 = property;
            c4074.f15529.remove(str);
            c4074.f15529.put(c4074.f15551, c4066);
        }
        if (c4074.f15550 != null) {
            c4074.f15551 = property.getName();
        }
        c4074.f15550 = property;
        c4074.f15527 = false;
        c4074.mo8326(fArr);
        return c4074;
    }

    @Override // p328.C4074
    /* renamed from: clone */
    public final Object mo8311() {
        return (C4082) super.clone();
    }

    @Override // p328.C4074
    public final String toString() {
        StringBuilder sb = new StringBuilder("ObjectAnimator@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(", target ");
        WeakReference weakReference = this.f15552;
        sb.append(weakReference == null ? null : weakReference.get());
        String sb2 = sb.toString();
        if (this.f15521 != null) {
            for (int i = 0; i < this.f15521.length; i++) {
                StringBuilder m3017 = AbstractC0844.m3017(sb2, "\n    ");
                m3017.append(this.f15521[i].toString());
                sb2 = m3017.toString();
            }
        }
        return sb2;
    }

    @Override // p328.C4074
    /* renamed from: ʽﹳ */
    public final void mo8321(float f) {
        WeakReference weakReference = this.f15552;
        Object obj = weakReference == null ? null : weakReference.get();
        if (this.f15552 != null && obj == null) {
            cancel();
            return;
        }
        super.mo8321(f);
        int length = this.f15521.length;
        for (int i = 0; i < length; i++) {
            C4066 c4066 = this.f15521[i];
            Object[] objArr = c4066.f15481;
            Property property = c4066.f15482;
            if (property != null) {
                property.set(obj, Float.valueOf(c4066.f15480));
            } else if (c4066.f15475 != null) {
                try {
                    objArr[0] = Float.valueOf(c4066.f15480);
                    c4066.f15475.invoke(obj, objArr);
                } catch (IllegalAccessException e) {
                    e.toString();
                } catch (InvocationTargetException e2) {
                    e2.toString();
                }
            }
        }
    }

    @Override // p328.C4074
    /* renamed from: ʾˋ */
    public final void mo8322() {
        if (this.f15527) {
            return;
        }
        WeakReference weakReference = this.f15552;
        Object obj = weakReference == null ? null : weakReference.get();
        if (obj != null) {
            int length = this.f15521.length;
            for (int i = 0; i < length; i++) {
                C4066 c4066 = this.f15521[i];
                if (c4066.f15482 != null) {
                    try {
                        List list = c4066.f15479.f15509;
                        int size = list == null ? 0 : list.size();
                        Object obj2 = null;
                        for (int i2 = 0; i2 < size; i2++) {
                            C4079 c4079 = (C4079) list.get(i2);
                            if (!c4079.f15546 || c4079.f15548) {
                                if (obj2 == null) {
                                    obj2 = c4066.f15482.get(obj);
                                }
                                Float f = (Float) obj2;
                                if (f != null && f.getClass() == Float.class) {
                                    c4079.f15547 = f.floatValue();
                                    c4079.f15546 = true;
                                }
                                c4079.f15548 = true;
                            }
                        }
                    } catch (ClassCastException unused) {
                        String str = "No such property (" + c4066.f15482.getName() + ") on target object " + obj + ". Trying reflection instead";
                        c4066.f15482 = null;
                    }
                }
                if (c4066.f15482 == null) {
                    Class<?> cls = obj.getClass();
                    if (c4066.f15475 == null) {
                        c4066.f15475 = c4066.m8276(cls, C4066.f15474, "set", c4066.f15483);
                    }
                    List list2 = c4066.f15479.f15509;
                    int size2 = list2 == null ? 0 : list2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        C4079 c40792 = (C4079) list2.get(i3);
                        if (!c40792.f15546 || c40792.f15548) {
                            if (c4066.f15477 == null) {
                                Method m8276 = c4066.m8276(cls, C4066.f15471, "get", null);
                                c4066.f15477 = m8276;
                                if (m8276 == null) {
                                    break;
                                }
                            }
                            try {
                                Float f2 = (Float) c4066.f15477.invoke(obj, null);
                                if (f2 != null && f2.getClass() == Float.class) {
                                    c40792.f15547 = f2.floatValue();
                                    c40792.f15546 = true;
                                }
                                c40792.f15548 = true;
                            } catch (IllegalAccessException e) {
                                e.toString();
                            } catch (InvocationTargetException e2) {
                                e2.toString();
                            }
                        }
                    }
                }
            }
        }
        super.mo8322();
    }

    @Override // p328.C4074, p328.AbstractC4084
    /* renamed from: ˆʾ */
    public final boolean mo8293() {
        return this.f15527;
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m8339(Object obj) {
        WeakReference weakReference = this.f15552;
        if ((weakReference == null ? null : weakReference.get()) != obj) {
            if (this.f15522) {
                cancel();
            }
            this.f15552 = obj != null ? new WeakReference(obj) : null;
            this.f15527 = false;
        }
    }

    @Override // p328.C4074
    /* renamed from: ˊʻ */
    public final void mo8326(float... fArr) {
        C4066[] c4066Arr = this.f15521;
        if (c4066Arr != null && c4066Arr.length != 0) {
            super.mo8326(fArr);
            return;
        }
        Property property = this.f15550;
        if (property != null) {
            m8329(new C4066(property, fArr));
        } else {
            m8329(new C4066(this.f15551, fArr));
        }
    }

    @Override // p328.C4074, p328.AbstractC4084
    /* renamed from: יـ */
    public final void mo8299() {
        ArrayList arrayList = C4065.m8271().f15468;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
        }
        m8332(false);
    }

    @Override // p328.C4074
    /* renamed from: ـˆ */
    public final C4074 clone() {
        return (C4082) super.clone();
    }

    @Override // p328.C4074
    /* renamed from: ᴵᵔ */
    public final C4074 mo8305(long j) {
        super.mo8305(j);
        return this;
    }

    @Override // p328.C4074, p328.AbstractC4084
    /* renamed from: ᵔʾ */
    public final AbstractC4084 mo8305(long j) {
        super.mo8305(j);
        return this;
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void m8340(long j) {
        super.mo8305(j);
    }

    @Override // p328.C4074, p328.AbstractC4084
    /* renamed from: ﾞᴵ */
    public final AbstractC4084 mo8311() {
        return (C4082) super.clone();
    }
}

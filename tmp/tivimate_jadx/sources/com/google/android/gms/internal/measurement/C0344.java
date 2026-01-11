package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Binder;
import android.os.Handler;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.leanback.app.C0069;
import androidx.leanback.app.C0071;
import androidx.leanback.widget.C0095;
import androidx.leanback.widget.C0101;
import androidx.leanback.widget.C0108;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.ILoggerFactory;
import p050.C1385;
import p220.C3029;
import p220.InterfaceC3036;
import p399.InterfaceC4748;
import p449.InterfaceC5360;

/* renamed from: com.google.android.gms.internal.measurement.ˊـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0344 implements ILoggerFactory {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static C0344 f1996;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f1997;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f1998;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Object f1999;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f2000;

    public C0344(int i) {
        this.f1998 = i;
        switch (i) {
            case 2:
                this.f2000 = false;
                this.f1997 = new HashMap();
                this.f1999 = new LinkedBlockingQueue();
                return;
            case 3:
                this.f1997 = new Object();
                return;
            case 4:
                this.f1997 = Collections.newSetFromMap(new WeakHashMap());
                this.f1999 = new HashSet();
                return;
            default:
                this.f2000 = false;
                this.f1997 = null;
                this.f1999 = null;
                return;
        }
    }

    public C0344(Context context) {
        this.f1998 = 0;
        this.f2000 = false;
        this.f1997 = context;
        this.f1999 = new ـˑ((Handler) null, 0);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m1585(C0101 c0101, TextView textView) {
        C0095 c0095 = c0101.f896;
        if (textView == c0101.f889) {
            if (c0095.f877 != null) {
                c0095.f877 = textView.getText();
                return;
            } else {
                c0095.f873 = textView.getText();
                return;
            }
        }
        if (textView == c0101.f894) {
            if (c0095.f882 != null) {
                c0095.f882 = textView.getText();
            } else {
                c0095.f871 = textView.getText();
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static C0344 m1586(Context context) {
        C0344 c0344;
        synchronized (C0344.class) {
            try {
                if (f1996 == null) {
                    f1996 = ʼ.ᵎﹶ.ٴﹶ(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new C0344(context) : new C0344(0);
                }
                C0344 c03442 = f1996;
                if (c03442 != null && ((ـˑ) c03442.f1999) != null && !c03442.f2000) {
                    try {
                        context.getContentResolver().registerContentObserver(AbstractC0246.f1731, true, (ـˑ) f1996.f1999);
                        C0344 c03443 = f1996;
                        c03443.getClass();
                        c03443.f2000 = true;
                    } catch (SecurityException e) {
                    }
                }
                c0344 = f1996;
                c0344.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0344;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static synchronized void m1587() {
        Context context;
        synchronized (C0344.class) {
            try {
                C0344 c0344 = f1996;
                if (c0344 != null && (context = (Context) c0344.f1997) != null && ((ـˑ) c0344.f1999) != null && c0344.f2000) {
                    context.getContentResolver().unregisterContentObserver((ـˑ) f1996.f1999);
                }
                f1996 = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        switch (this.f1998) {
            case 4:
                return super.toString() + "{numRequests=" + ((Set) this.f1997).size() + ", isPaused=" + this.f2000 + "}";
            default:
                return super.toString();
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void m1588(InterfaceC3036 interfaceC3036) {
        synchronized (this.f1997) {
            try {
                if (((ArrayDeque) this.f1999) == null) {
                    this.f1999 = new ArrayDeque();
                }
                ((ArrayDeque) this.f1999).add(interfaceC3036);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m1589(View view) {
        if (this.f2000) {
            this.f2000 = false;
            ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            ((C0071) this.f1999).f539.m425(false);
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public String m1590(String str) {
        Object m1701;
        Context context = (Context) this.f1997;
        if (context != null && (!AbstractC0277.m1288() || AbstractC0277.m1287(context))) {
            try {
                try {
                    C0371 c0371 = new C0371(this, str);
                    try {
                        m1701 = c0371.m1701();
                    } catch (SecurityException unused) {
                        long clearCallingIdentity = Binder.clearCallingIdentity();
                        try {
                            m1701 = c0371.m1701();
                        } finally {
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                        }
                    }
                    return (String) m1701;
                } catch (SecurityException e) {
                    "Unable to read GServices for: ".concat(str);
                    return null;
                }
            } catch (IllegalStateException e2) {
                "Unable to read GServices for: ".concat(str);
                return null;
            } catch (NullPointerException e3) {
                "Unable to read GServices for: ".concat(str);
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0044, code lost:
    
        r3 = 0;
     */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1591(androidx.leanback.widget.C0108 r12, android.widget.TextView r13) {
        /*
            r11 = this;
            androidx.leanback.widget.ˈʿ r0 = r12.m609(r13)
            m1585(r0, r13)
            androidx.leanback.widget.ᴵᵔ r1 = r12.f914
            if (r1 == 0) goto L10
            androidx.leanback.widget.ʾᵎ r2 = r0.f896
            r1.mo441(r2)
        L10:
            java.lang.Object r1 = r11.f1999
            androidx.leanback.app.ﹳٴ r1 = (androidx.leanback.app.C0071) r1
            androidx.leanback.widget.ʾᵎ r2 = r0.f896
            androidx.leanback.app.ʽ r1 = r1.f539
            long r1 = r1.m431(r2)
            androidx.leanback.widget.ˑٴ r3 = r12.f918
            r4 = 0
            r5 = 1
            r3.m617(r0, r4, r5)
            r6 = -3
            int r3 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r3 == 0) goto Lb5
            androidx.leanback.widget.ʾᵎ r3 = r0.f896
            long r6 = r3.f880
            int r6 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r6 == 0) goto Lb5
            r6 = -2
            int r6 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r6 != 0) goto L43
            java.util.ArrayList r7 = r12.f909
            int r3 = r7.indexOf(r3)
            if (r3 >= 0) goto L41
            goto Lb5
        L41:
            int r3 = r3 + r5
            goto L44
        L43:
            r3 = r4
        L44:
            java.util.ArrayList r7 = r12.f909
            int r8 = r7.size()
            if (r6 != 0) goto L5f
        L4c:
            if (r3 >= r8) goto L70
            java.lang.Object r9 = r7.get(r3)
            androidx.leanback.widget.ʾᵎ r9 = (androidx.leanback.widget.C0095) r9
            int r9 = r9.f875
            r10 = 32
            r9 = r9 & r10
            if (r9 != r10) goto L5c
            goto L70
        L5c:
            int r3 = r3 + 1
            goto L4c
        L5f:
            if (r3 >= r8) goto L70
            java.lang.Object r9 = r7.get(r3)
            androidx.leanback.widget.ʾᵎ r9 = (androidx.leanback.widget.C0095) r9
            long r9 = r9.f880
            int r9 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r9 == 0) goto L70
            int r3 = r3 + 1
            goto L5f
        L70:
            if (r3 >= r8) goto L95
            androidx.leanback.widget.ˑٴ r1 = r12.f918
            androidx.leanback.widget.VerticalGridView r1 = r1.f944
            ˋˋ.ʼـ r1 = r1.m979(r3, r4)
            androidx.leanback.widget.ˈʿ r1 = (androidx.leanback.widget.C0101) r1
            if (r1 == 0) goto Lb5
            android.view.View r13 = r1.f10176
            androidx.leanback.widget.ʾᵎ r0 = r1.f896
            int r0 = r0.f878
            if (r0 == r5) goto L91
            r2 = 2
            if (r0 != r2) goto L8a
            goto L91
        L8a:
            r11.m1589(r13)
            r13.requestFocus()
            return
        L91:
            r11.m1596(r12, r1)
            return
        L95:
            java.lang.Object r3 = r11.f1997
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            r7 = r4
        L9a:
            int r8 = r3.size()
            if (r7 >= r8) goto Lb2
            java.lang.Object r8 = r3.get(r7)
            android.util.Pair r8 = (android.util.Pair) r8
            java.lang.Object r9 = r8.first
            if (r9 != r12) goto Laf
            java.lang.Object r12 = r8.second
            androidx.leanback.widget.ˊʻ r12 = (androidx.leanback.widget.C0108) r12
            goto Lb3
        Laf:
            int r7 = r7 + 1
            goto L9a
        Lb2:
            r12 = 0
        Lb3:
            if (r12 != 0) goto L43
        Lb5:
            r11.m1589(r13)
            android.view.View r12 = r0.f10176
            r12.requestFocus()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0344.m1591(androidx.leanback.widget.ˊʻ, android.widget.TextView):void");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m1592(C0108 c0108, TextView textView) {
        C0101 m609 = c0108.m609(textView);
        m1585(m609, textView);
        C0069 c0069 = ((C0071) this.f1999).f539;
        c0108.f918.m617(m609, false, true);
        m1589(textView);
        m609.f10176.requestFocus();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void m1593(C3029 c3029) {
        InterfaceC3036 interfaceC3036;
        synchronized (this.f1997) {
            if (((ArrayDeque) this.f1999) != null && !this.f2000) {
                this.f2000 = true;
                while (true) {
                    synchronized (this.f1997) {
                        try {
                            interfaceC3036 = (InterfaceC3036) ((ArrayDeque) this.f1999).poll();
                            if (interfaceC3036 == null) {
                                this.f2000 = false;
                                return;
                            }
                        } finally {
                        }
                    }
                    interfaceC3036.mo6559(c3029);
                }
            }
        }
    }

    @Override // org.slf4j.ILoggerFactory
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public synchronized InterfaceC5360 mo1594(String str) {
        C1385 c1385;
        c1385 = (C1385) ((HashMap) this.f1997).get(str);
        if (c1385 == null) {
            c1385 = new C1385(str, (LinkedBlockingQueue) this.f1999, this.f2000);
            ((HashMap) this.f1997).put(str, c1385);
        }
        return c1385;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean m1595(InterfaceC4748 interfaceC4748) {
        boolean z = true;
        if (interfaceC4748 == null) {
            return true;
        }
        boolean remove = ((Set) this.f1997).remove(interfaceC4748);
        if (!((HashSet) this.f1999).remove(interfaceC4748) && !remove) {
            z = false;
        }
        if (z) {
            interfaceC4748.clear();
        }
        return z;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m1596(C0108 c0108, C0101 c0101) {
        c0108.f918.m617(c0101, true, true);
        int i = c0101.f891;
        View view = i != 1 ? i != 2 ? i != 3 ? null : c0101.f886 : c0101.f889 : c0101.f894;
        if (view != null) {
            if (i == 1 || i == 2) {
                InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
                view.setFocusable(true);
                view.requestFocus();
                inputMethodManager.showSoftInput(view, 0);
                if (this.f2000) {
                    return;
                }
                this.f2000 = true;
                ((C0071) this.f1999).f539.m425(true);
            }
        }
    }
}

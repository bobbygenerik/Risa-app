package p186;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* renamed from: ˋᵔ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2839 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ViewGroup f10641;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f10642;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int[] f10643;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ViewParent f10644;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ViewParent f10645;

    public C2839(ViewGroup viewGroup) {
        this.f10641 = viewGroup;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m6296(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        ViewParent m6298;
        int i4;
        int i5;
        int[] iArr3;
        if (!this.f10642 || (m6298 = m6298(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        ViewGroup viewGroup = this.f10641;
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            if (this.f10643 == null) {
                this.f10643 = new int[2];
            }
            iArr3 = this.f10643;
        } else {
            iArr3 = iArr;
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        if (m6298 instanceof InterfaceC2791) {
            ((InterfaceC2791) m6298).mo42(viewGroup, i, i2, iArr3, i3);
        } else if (i3 == 0) {
            try {
                m6298.onNestedPreScroll(viewGroup, i, i2, iArr3);
            } catch (AbstractMethodError e) {
                String str = "ViewParent " + m6298 + " does not implement interface method onNestedPreScroll";
            }
        }
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m6297(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent m6298;
        int i6;
        int i7;
        int[] iArr3;
        if (this.f10642 && (m6298 = m6298(i5)) != null) {
            if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
                ViewGroup viewGroup = this.f10641;
                if (iArr != null) {
                    viewGroup.getLocationInWindow(iArr);
                    i6 = iArr[0];
                    i7 = iArr[1];
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                if (iArr2 == null) {
                    if (this.f10643 == null) {
                        this.f10643 = new int[2];
                    }
                    int[] iArr4 = this.f10643;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    iArr3 = iArr4;
                } else {
                    iArr3 = iArr2;
                }
                if (m6298 instanceof InterfaceC2827) {
                    ((InterfaceC2827) m6298).mo44(viewGroup, i, i2, i3, i4, i5, iArr3);
                } else {
                    iArr3[0] = iArr3[0] + i3;
                    iArr3[1] = iArr3[1] + i4;
                    if (m6298 instanceof InterfaceC2791) {
                        ((InterfaceC2791) m6298).mo45(viewGroup, i, i2, i3, i4, i5);
                    } else if (i5 == 0) {
                        try {
                            m6298.onNestedScroll(viewGroup, i, i2, i3, i4);
                        } catch (AbstractMethodError e) {
                            String str = "ViewParent " + m6298 + " does not implement interface method onNestedScroll";
                        }
                    }
                }
                if (iArr != null) {
                    viewGroup.getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i6;
                    iArr[1] = iArr[1] - i7;
                }
                return true;
            }
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                return false;
            }
        }
        return false;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ViewParent m6298(int i) {
        if (i == 0) {
            return this.f10645;
        }
        if (i != 1) {
            return null;
        }
        return this.f10644;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m6299(int i, int i2) {
        boolean onStartNestedScroll;
        if (!m6303(i2)) {
            if (this.f10642) {
                View view = this.f10641;
                View view2 = view;
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    boolean z = parent instanceof InterfaceC2791;
                    if (z) {
                        onStartNestedScroll = ((InterfaceC2791) parent).mo51(view2, view, i, i2);
                    } else {
                        if (i2 == 0) {
                            try {
                                onStartNestedScroll = parent.onStartNestedScroll(view2, view, i);
                            } catch (AbstractMethodError e) {
                                String str = "ViewParent " + parent + " does not implement interface method onStartNestedScroll";
                            }
                        }
                        onStartNestedScroll = false;
                    }
                    if (onStartNestedScroll) {
                        if (i2 == 0) {
                            this.f10645 = parent;
                        } else if (i2 == 1) {
                            this.f10644 = parent;
                        }
                        if (z) {
                            ((InterfaceC2791) parent).mo49(view2, view, i, i2);
                        } else if (i2 == 0) {
                            try {
                                parent.onNestedScrollAccepted(view2, view, i);
                            } catch (AbstractMethodError e2) {
                                String str2 = "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted";
                            }
                        }
                    } else {
                        if (parent instanceof View) {
                            view2 = parent;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6300(int i) {
        ViewParent m6298 = m6298(i);
        if (m6298 != null) {
            boolean z = m6298 instanceof InterfaceC2791;
            ViewGroup viewGroup = this.f10641;
            if (z) {
                ((InterfaceC2791) m6298).mo48(viewGroup, i);
            } else if (i == 0) {
                try {
                    m6298.onStopNestedScroll(viewGroup);
                } catch (AbstractMethodError e) {
                    String str = "ViewParent " + m6298 + " does not implement interface method onStopNestedScroll";
                }
            }
            if (i == 0) {
                this.f10645 = null;
            } else {
                if (i != 1) {
                    return;
                }
                this.f10644 = null;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m6301(float f, float f2) {
        ViewParent m6298;
        if (this.f10642 && (m6298 = m6298(0)) != null) {
            try {
                return m6298.onNestedPreFling(this.f10641, f, f2);
            } catch (AbstractMethodError e) {
                String str = "ViewParent " + m6298 + " does not implement interface method onNestedPreFling";
            }
        }
        return false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m6302(float f, float f2, boolean z) {
        ViewParent m6298;
        if (this.f10642 && (m6298 = m6298(0)) != null) {
            try {
                return m6298.onNestedFling(this.f10641, f, f2, z);
            } catch (AbstractMethodError e) {
                String str = "ViewParent " + m6298 + " does not implement interface method onNestedFling";
            }
        }
        return false;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m6303(int i) {
        return m6298(i) != null;
    }
}

package com.google.crypto.tink.shaded.protobuf;

import androidx.datastore.preferences.protobuf.AbstractC0016;
import java.io.IOException;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0730 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f3019;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f3020 = 0;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f3021;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0016 f3022;

    public C0730(AbstractC0016 abstractC0016) {
        AbstractC0702.m2488(abstractC0016, "input");
        this.f3022 = abstractC0016;
        abstractC0016.f396 = this;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static void m2584(int i) {
        if ((i & 7) != 0) {
            throw InvalidProtocolBufferException.m2467();
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static void m2585(int i) {
        if ((i & 3) != 0) {
            throw InvalidProtocolBufferException.m2467();
        }
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m2586(int i) {
        if ((this.f3021 & 7) != i) {
            throw InvalidProtocolBufferException.m2461();
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m2587(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0703;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i == 2) {
                int mo190 = abstractC0016.mo190();
                m2585(mo190);
                int mo214 = abstractC0016.mo214() + mo190;
                do {
                    interfaceC0746.add(Integer.valueOf(abstractC0016.mo212()));
                } while (abstractC0016.mo214() < mo214);
                return;
            }
            if (i != 5) {
                throw InvalidProtocolBufferException.m2461();
            }
            do {
                interfaceC0746.add(Integer.valueOf(abstractC0016.mo212()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 == 2) {
            int mo1902 = abstractC0016.mo190();
            m2585(mo1902);
            int mo2142 = abstractC0016.mo214() + mo1902;
            do {
                abstractC0703.m2490(abstractC0016.mo212());
            } while (abstractC0016.mo214() < mo2142);
            return;
        }
        if (i2 != 5) {
            throw InvalidProtocolBufferException.m2461();
        }
        do {
            abstractC0703.m2490(abstractC0016.mo212());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m2588(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0703;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 0) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
                do {
                    interfaceC0746.add(Integer.valueOf(abstractC0016.mo180()));
                } while (abstractC0016.mo214() < mo214);
                m2590(mo214);
                return;
            }
            do {
                interfaceC0746.add(Integer.valueOf(abstractC0016.mo180()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo2142 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                abstractC0703.m2490(abstractC0016.mo180());
            } while (abstractC0016.mo214() < mo2142);
            m2590(mo2142);
            return;
        }
        do {
            abstractC0703.m2490(abstractC0016.mo180());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m2589(Object obj, InterfaceC0711 interfaceC0711, C0713 c0713) {
        AbstractC0016 abstractC0016 = this.f3022;
        int mo190 = abstractC0016.mo190();
        if (abstractC0016.f397 >= 100) {
            throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int mo213 = abstractC0016.mo213(mo190);
        abstractC0016.f397++;
        interfaceC0711.mo2519(obj, this, c0713);
        abstractC0016.mo211(0);
        abstractC0016.f397--;
        abstractC0016.mo187(mo213);
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m2590(int i) {
        if (this.f3022.mo214() != i) {
            throw InvalidProtocolBufferException.m2464();
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m2591(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0736;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 1) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo190 = abstractC0016.mo190();
                m2584(mo190);
                int mo214 = abstractC0016.mo214() + mo190;
                do {
                    interfaceC0746.add(Long.valueOf(abstractC0016.mo198()));
                } while (abstractC0016.mo214() < mo214);
                return;
            }
            do {
                interfaceC0746.add(Long.valueOf(abstractC0016.mo198()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 1) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo1902 = abstractC0016.mo190();
            m2584(mo1902);
            int mo2142 = abstractC0016.mo214() + mo1902;
            do {
                abstractC0736.m2651(abstractC0016.mo198());
            } while (abstractC0016.mo214() < mo2142);
            return;
        }
        do {
            abstractC0736.m2651(abstractC0016.mo198());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m2592(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0708;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 0) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
                do {
                    interfaceC0746.add(Boolean.valueOf(abstractC0016.mo191()));
                } while (abstractC0016.mo214() < mo214);
                m2590(mo214);
                return;
            }
            do {
                interfaceC0746.add(Boolean.valueOf(abstractC0016.mo191()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0708 abstractC0708 = (AbstractC0708) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo2142 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                abstractC0708.m2513(abstractC0016.mo191());
            } while (abstractC0016.mo214() < mo2142);
            m2590(mo2142);
            return;
        }
        do {
            abstractC0708.m2513(abstractC0016.mo191());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m2593(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0736;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 0) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
                do {
                    interfaceC0746.add(Long.valueOf(abstractC0016.mo179()));
                } while (abstractC0016.mo214() < mo214);
                m2590(mo214);
                return;
            }
            do {
                interfaceC0746.add(Long.valueOf(abstractC0016.mo179()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo2142 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                abstractC0736.m2651(abstractC0016.mo179());
            } while (abstractC0016.mo214() < mo2142);
            m2590(mo2142);
            return;
        }
        do {
            abstractC0736.m2651(abstractC0016.mo179());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m2594(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0736;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 1) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo190 = abstractC0016.mo190();
                m2584(mo190);
                int mo214 = abstractC0016.mo214() + mo190;
                do {
                    interfaceC0746.add(Long.valueOf(abstractC0016.mo186()));
                } while (abstractC0016.mo214() < mo214);
                return;
            }
            do {
                interfaceC0746.add(Long.valueOf(abstractC0016.mo186()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 1) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo1902 = abstractC0016.mo190();
            m2584(mo1902);
            int mo2142 = abstractC0016.mo214() + mo1902;
            do {
                abstractC0736.m2651(abstractC0016.mo186());
            } while (abstractC0016.mo214() < mo2142);
            return;
        }
        do {
            abstractC0736.m2651(abstractC0016.mo186());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m2595(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0736;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 0) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
                do {
                    interfaceC0746.add(Long.valueOf(abstractC0016.mo202()));
                } while (abstractC0016.mo214() < mo214);
                m2590(mo214);
                return;
            }
            do {
                interfaceC0746.add(Long.valueOf(abstractC0016.mo202()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo2142 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                abstractC0736.m2651(abstractC0016.mo202());
            } while (abstractC0016.mo214() < mo2142);
            m2590(mo2142);
            return;
        }
        do {
            abstractC0736.m2651(abstractC0016.mo202());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC0744 m2596() {
        m2586(2);
        return this.f3022.mo230();
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m2597(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0703;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 0) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
                do {
                    interfaceC0746.add(Integer.valueOf(abstractC0016.mo190()));
                } while (abstractC0016.mo214() < mo214);
                m2590(mo214);
                return;
            }
            do {
                interfaceC0746.add(Integer.valueOf(abstractC0016.mo190()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo2142 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                abstractC0703.m2490(abstractC0016.mo190());
            } while (abstractC0016.mo214() < mo2142);
            m2590(mo2142);
            return;
        }
        do {
            abstractC0703.m2490(abstractC0016.mo190());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m2598(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0724;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i == 2) {
                int mo190 = abstractC0016.mo190();
                m2585(mo190);
                int mo214 = abstractC0016.mo214() + mo190;
                do {
                    interfaceC0746.add(Float.valueOf(abstractC0016.mo196()));
                } while (abstractC0016.mo214() < mo214);
                return;
            }
            if (i != 5) {
                throw InvalidProtocolBufferException.m2461();
            }
            do {
                interfaceC0746.add(Float.valueOf(abstractC0016.mo196()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0724 abstractC0724 = (AbstractC0724) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 == 2) {
            int mo1902 = abstractC0016.mo190();
            m2585(mo1902);
            int mo2142 = abstractC0016.mo214() + mo1902;
            do {
                abstractC0724.m2553(abstractC0016.mo196());
            } while (abstractC0016.mo214() < mo2142);
            return;
        }
        if (i2 != 5) {
            throw InvalidProtocolBufferException.m2461();
        }
        do {
            abstractC0724.m2553(abstractC0016.mo196());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m2599(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0712;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 1) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo190 = abstractC0016.mo190();
                m2584(mo190);
                int mo214 = abstractC0016.mo214() + mo190;
                do {
                    interfaceC0746.add(Double.valueOf(abstractC0016.mo182()));
                } while (abstractC0016.mo214() < mo214);
                return;
            }
            do {
                interfaceC0746.add(Double.valueOf(abstractC0016.mo182()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0712 abstractC0712 = (AbstractC0712) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 1) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo1902 = abstractC0016.mo190();
            m2584(mo1902);
            int mo2142 = abstractC0016.mo214() + mo1902;
            do {
                abstractC0712.m2525(abstractC0016.mo182());
            } while (abstractC0016.mo214() < mo2142);
            return;
        }
        do {
            abstractC0712.m2525(abstractC0016.mo182());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m2600(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0703;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i == 2) {
                int mo190 = abstractC0016.mo190();
                m2585(mo190);
                int mo214 = abstractC0016.mo214() + mo190;
                do {
                    interfaceC0746.add(Integer.valueOf(abstractC0016.mo199()));
                } while (abstractC0016.mo214() < mo214);
                return;
            }
            if (i != 5) {
                throw InvalidProtocolBufferException.m2461();
            }
            do {
                interfaceC0746.add(Integer.valueOf(abstractC0016.mo199()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 == 2) {
            int mo1902 = abstractC0016.mo190();
            m2585(mo1902);
            int mo2142 = abstractC0016.mo214() + mo1902;
            do {
                abstractC0703.m2490(abstractC0016.mo199());
            } while (abstractC0016.mo214() < mo2142);
            return;
        }
        if (i2 != 5) {
            throw InvalidProtocolBufferException.m2461();
        }
        do {
            abstractC0703.m2490(abstractC0016.mo199());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m2601(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0703;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 0) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
                do {
                    interfaceC0746.add(Integer.valueOf(abstractC0016.mo209()));
                } while (abstractC0016.mo214() < mo214);
                m2590(mo214);
                return;
            }
            do {
                interfaceC0746.add(Integer.valueOf(abstractC0016.mo209()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo2142 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                abstractC0703.m2490(abstractC0016.mo209());
            } while (abstractC0016.mo214() < mo2142);
            m2590(mo2142);
            return;
        }
        do {
            abstractC0703.m2490(abstractC0016.mo209());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m2602(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0736;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 0) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
                do {
                    interfaceC0746.add(Long.valueOf(abstractC0016.mo210()));
                } while (abstractC0016.mo214() < mo214);
                m2590(mo214);
                return;
            }
            do {
                interfaceC0746.add(Long.valueOf(abstractC0016.mo210()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0736 abstractC0736 = (AbstractC0736) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo2142 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                abstractC0736.m2651(abstractC0016.mo210());
            } while (abstractC0016.mo214() < mo2142);
            m2590(mo2142);
            return;
        }
        do {
            abstractC0736.m2651(abstractC0016.mo210());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m2603(Object obj, InterfaceC0711 interfaceC0711, C0713 c0713) {
        int i = this.f3019;
        this.f3019 = ((this.f3021 >>> 3) << 3) | 4;
        try {
            interfaceC0711.mo2519(obj, this, c0713);
            if (this.f3021 == this.f3019) {
            } else {
                throw InvalidProtocolBufferException.m2467();
            }
        } finally {
            this.f3019 = i;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m2604() {
        int i = this.f3020;
        if (i != 0) {
            this.f3021 = i;
            this.f3020 = 0;
        } else {
            this.f3021 = this.f3022.mo183();
        }
        int i2 = this.f3021;
        if (i2 == 0 || i2 == this.f3019) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m2605(InterfaceC0746 interfaceC0746, boolean z) {
        String mo185;
        int mo183;
        if ((this.f3021 & 7) != 2) {
            throw InvalidProtocolBufferException.m2461();
        }
        do {
            AbstractC0016 abstractC0016 = this.f3022;
            if (z) {
                m2586(2);
                mo185 = abstractC0016.mo201();
            } else {
                m2586(2);
                mo185 = abstractC0016.mo185();
            }
            interfaceC0746.add(mo185);
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f3021);
        this.f3020 = mo183;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m2606(InterfaceC0746 interfaceC0746) {
        int mo183;
        int mo1832;
        boolean z = interfaceC0746 instanceof AbstractC0703;
        AbstractC0016 abstractC0016 = this.f3022;
        if (!z) {
            int i = this.f3021 & 7;
            if (i != 0) {
                if (i != 2) {
                    throw InvalidProtocolBufferException.m2461();
                }
                int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
                do {
                    interfaceC0746.add(Integer.valueOf(abstractC0016.mo184()));
                } while (abstractC0016.mo214() < mo214);
                m2590(mo214);
                return;
            }
            do {
                interfaceC0746.add(Integer.valueOf(abstractC0016.mo184()));
                if (abstractC0016.mo205()) {
                    return;
                } else {
                    mo183 = abstractC0016.mo183();
                }
            } while (mo183 == this.f3021);
            this.f3020 = mo183;
            return;
        }
        AbstractC0703 abstractC0703 = (AbstractC0703) interfaceC0746;
        int i2 = this.f3021 & 7;
        if (i2 != 0) {
            if (i2 != 2) {
                throw InvalidProtocolBufferException.m2461();
            }
            int mo2142 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                abstractC0703.m2490(abstractC0016.mo184());
            } while (abstractC0016.mo214() < mo2142);
            m2590(mo2142);
            return;
        }
        do {
            abstractC0703.m2490(abstractC0016.mo184());
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo1832 = abstractC0016.mo183();
            }
        } while (mo1832 == this.f3021);
        this.f3020 = mo1832;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m2607(InterfaceC0746 interfaceC0746) {
        int mo183;
        if ((this.f3021 & 7) != 2) {
            throw InvalidProtocolBufferException.m2461();
        }
        do {
            interfaceC0746.add(m2596());
            AbstractC0016 abstractC0016 = this.f3022;
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f3021);
        this.f3020 = mo183;
    }
}

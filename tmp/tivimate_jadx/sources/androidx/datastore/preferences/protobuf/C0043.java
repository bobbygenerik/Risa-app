package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.nio.charset.Charset;
import p223.C3056;

/* renamed from: androidx.datastore.preferences.protobuf.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0043 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f442;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f443 = 0;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f444;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0016 f445;

    public C0043(AbstractC0016 abstractC0016) {
        Charset charset = AbstractC0013.f389;
        this.f445 = abstractC0016;
        abstractC0016.f396 = this;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m287(int i) {
        if (this.f445.mo214() != i) {
            throw InvalidProtocolBufferException.m141();
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Object m288(EnumC0042 enumC0042, Class cls, C0055 c0055) {
        int ordinal = enumC0042.ordinal();
        AbstractC0016 abstractC0016 = this.f445;
        switch (ordinal) {
            case 0:
                m300(1);
                return Double.valueOf(abstractC0016.mo182());
            case 1:
                m300(5);
                return Float.valueOf(abstractC0016.mo196());
            case 2:
                m300(0);
                return Long.valueOf(abstractC0016.mo179());
            case 3:
                m300(0);
                return Long.valueOf(abstractC0016.mo202());
            case 4:
                m300(0);
                return Integer.valueOf(abstractC0016.mo184());
            case 5:
                m300(1);
                return Long.valueOf(abstractC0016.mo198());
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                m300(5);
                return Integer.valueOf(abstractC0016.mo212());
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                m300(0);
                return Boolean.valueOf(abstractC0016.mo191());
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                m300(2);
                return abstractC0016.mo201();
            case 9:
            default:
                throw new IllegalArgumentException("unsupported field type.");
            case 10:
                m300(2);
                InterfaceC0006 m254 = C0034.f426.m254(cls);
                AbstractC0003 mo172 = m254.mo172();
                m290(mo172, m254, c0055);
                m254.mo176(mo172);
                return mo172;
            case 11:
                return m298();
            case 12:
                m300(0);
                return Integer.valueOf(abstractC0016.mo190());
            case 13:
                m300(0);
                return Integer.valueOf(abstractC0016.mo209());
            case 14:
                m300(5);
                return Integer.valueOf(abstractC0016.mo199());
            case 15:
                m300(1);
                return Long.valueOf(abstractC0016.mo186());
            case 16:
                m300(0);
                return Integer.valueOf(abstractC0016.mo180());
            case 17:
                m300(0);
                return Long.valueOf(abstractC0016.mo210());
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m289(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 1) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo190 = abstractC0016.mo190();
            if ((mo190 & 7) != 0) {
                throw new IOException("Failed to parse the message.");
            }
            int mo214 = abstractC0016.mo214() + mo190;
            do {
                ((C0030) interfaceC0037).add(Long.valueOf(abstractC0016.mo186()));
            } while (abstractC0016.mo214() < mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Long.valueOf(abstractC0016.mo186()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m290(Object obj, InterfaceC0006 interfaceC0006, C0055 c0055) {
        AbstractC0016 abstractC0016 = this.f445;
        int mo190 = abstractC0016.mo190();
        if (abstractC0016.f397 >= 100) {
            throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int mo213 = abstractC0016.mo213(mo190);
        abstractC0016.f397++;
        interfaceC0006.mo175(obj, this, c0055);
        abstractC0016.mo211(0);
        abstractC0016.f397--;
        abstractC0016.mo187(mo213);
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m291(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 0) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                ((C0030) interfaceC0037).add(Long.valueOf(abstractC0016.mo202()));
            } while (abstractC0016.mo214() < mo214);
            m287(mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Long.valueOf(abstractC0016.mo202()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean m292() {
        int i;
        AbstractC0016 abstractC0016 = this.f445;
        if (abstractC0016.mo205() || (i = this.f444) == this.f442) {
            return false;
        }
        return abstractC0016.mo193(i);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m293(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i == 2) {
            int mo190 = abstractC0016.mo190();
            if ((mo190 & 3) != 0) {
                throw new IOException("Failed to parse the message.");
            }
            int mo214 = abstractC0016.mo214() + mo190;
            do {
                ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo212()));
            } while (abstractC0016.mo214() < mo214);
            return;
        }
        if (i != 5) {
            throw InvalidProtocolBufferException.m142();
        }
        do {
            ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo212()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m294(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 0) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                ((C0030) interfaceC0037).add(Boolean.valueOf(abstractC0016.mo191()));
            } while (abstractC0016.mo214() < mo214);
            m287(mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Boolean.valueOf(abstractC0016.mo191()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m295(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 0) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo184()));
            } while (abstractC0016.mo214() < mo214);
            m287(mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo184()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m296(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i == 2) {
            int mo190 = abstractC0016.mo190();
            if ((mo190 & 3) != 0) {
                throw new IOException("Failed to parse the message.");
            }
            int mo214 = abstractC0016.mo214() + mo190;
            do {
                ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo199()));
            } while (abstractC0016.mo214() < mo214);
            return;
        }
        if (i != 5) {
            throw InvalidProtocolBufferException.m142();
        }
        do {
            ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo199()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m297(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 0) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo190()));
            } while (abstractC0016.mo214() < mo214);
            m287(mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo190()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C0054 m298() {
        m300(2);
        return this.f445.mo206();
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m299(InterfaceC0037 interfaceC0037, boolean z) {
        String mo185;
        int mo183;
        if ((this.f444 & 7) != 2) {
            throw InvalidProtocolBufferException.m142();
        }
        do {
            AbstractC0016 abstractC0016 = this.f445;
            if (z) {
                m300(2);
                mo185 = abstractC0016.mo201();
            } else {
                m300(2);
                mo185 = abstractC0016.mo185();
            }
            ((C0030) interfaceC0037).add(mo185);
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m300(int i) {
        if ((this.f444 & 7) != i) {
            throw InvalidProtocolBufferException.m142();
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m301(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 1) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo190 = abstractC0016.mo190();
            if ((mo190 & 7) != 0) {
                throw new IOException("Failed to parse the message.");
            }
            int mo214 = abstractC0016.mo214() + mo190;
            do {
                ((C0030) interfaceC0037).add(Long.valueOf(abstractC0016.mo198()));
            } while (abstractC0016.mo214() < mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Long.valueOf(abstractC0016.mo198()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m302(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 1) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo190 = abstractC0016.mo190();
            if ((mo190 & 7) != 0) {
                throw new IOException("Failed to parse the message.");
            }
            int mo214 = abstractC0016.mo214() + mo190;
            do {
                ((C0030) interfaceC0037).add(Double.valueOf(abstractC0016.mo182()));
            } while (abstractC0016.mo214() < mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Double.valueOf(abstractC0016.mo182()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m303(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 0) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                ((C0030) interfaceC0037).add(Long.valueOf(abstractC0016.mo179()));
            } while (abstractC0016.mo214() < mo214);
            m287(mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Long.valueOf(abstractC0016.mo179()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m304(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 0) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo209()));
            } while (abstractC0016.mo214() < mo214);
            m287(mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo209()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m305(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 0) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo180()));
            } while (abstractC0016.mo214() < mo214);
            m287(mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Integer.valueOf(abstractC0016.mo180()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m306(Object obj, InterfaceC0006 interfaceC0006, C0055 c0055) {
        int i = this.f442;
        this.f442 = ((this.f444 >>> 3) << 3) | 4;
        try {
            interfaceC0006.mo175(obj, this, c0055);
            if (this.f444 == this.f442) {
            } else {
                throw new IOException("Failed to parse the message.");
            }
        } finally {
            this.f442 = i;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m307() {
        int i = this.f443;
        if (i != 0) {
            this.f444 = i;
            this.f443 = 0;
        } else {
            this.f444 = this.f445.mo183();
        }
        int i2 = this.f444;
        if (i2 == 0 || i2 == this.f442) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m308(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i != 0) {
            if (i != 2) {
                throw InvalidProtocolBufferException.m142();
            }
            int mo214 = abstractC0016.mo214() + abstractC0016.mo190();
            do {
                ((C0030) interfaceC0037).add(Long.valueOf(abstractC0016.mo210()));
            } while (abstractC0016.mo214() < mo214);
            m287(mo214);
            return;
        }
        do {
            ((C0030) interfaceC0037).add(Long.valueOf(abstractC0016.mo210()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m309(InterfaceC0037 interfaceC0037) {
        int mo183;
        int i = this.f444 & 7;
        AbstractC0016 abstractC0016 = this.f445;
        if (i == 2) {
            int mo190 = abstractC0016.mo190();
            if ((mo190 & 3) != 0) {
                throw new IOException("Failed to parse the message.");
            }
            int mo214 = abstractC0016.mo214() + mo190;
            do {
                ((C0030) interfaceC0037).add(Float.valueOf(abstractC0016.mo196()));
            } while (abstractC0016.mo214() < mo214);
            return;
        }
        if (i != 5) {
            throw InvalidProtocolBufferException.m142();
        }
        do {
            ((C0030) interfaceC0037).add(Float.valueOf(abstractC0016.mo196()));
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m310(InterfaceC0037 interfaceC0037) {
        int mo183;
        if ((this.f444 & 7) != 2) {
            throw InvalidProtocolBufferException.m142();
        }
        do {
            ((C0030) interfaceC0037).add(m298());
            AbstractC0016 abstractC0016 = this.f445;
            if (abstractC0016.mo205()) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == this.f444);
        this.f443 = mo183;
    }
}

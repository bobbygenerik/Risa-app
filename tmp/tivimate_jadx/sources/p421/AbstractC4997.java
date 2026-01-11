package p421;

import androidx.media3.decoder.DecoderException;
import com.parse.ˋᵔ;
import java.util.ArrayDeque;
import p305.AbstractC3731;

/* renamed from: ﹳⁱ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4997 implements InterfaceC4995 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C4996 f18674;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public DecoderException f18676;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f18678;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C4996[] f18679;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f18680;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f18681;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f18683;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ˋᵔ f18685;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f18686;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC5001[] f18687;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f18684 = new Object();

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long f18682 = -9223372036854775807L;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayDeque f18675 = new ArrayDeque();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ArrayDeque f18677 = new ArrayDeque();

    public AbstractC4997(C4996[] c4996Arr, AbstractC5001[] abstractC5001Arr) {
        this.f18679 = c4996Arr;
        this.f18681 = c4996Arr.length;
        for (int i = 0; i < this.f18681; i++) {
            this.f18679[i] = mo748();
        }
        this.f18687 = abstractC5001Arr;
        this.f18683 = abstractC5001Arr.length;
        for (int i2 = 0; i2 < this.f18683; i2++) {
            this.f18687[i2] = mo749();
        }
        ˋᵔ r4 = new ˋᵔ(this);
        this.f18685 = r4;
        r4.start();
    }

    @Override // p421.InterfaceC4995
    public final void flush() {
        synchronized (this.f18684) {
            try {
                this.f18680 = true;
                this.f18678 = 0;
                C4996 c4996 = this.f18674;
                if (c4996 != null) {
                    c4996.mo3629();
                    C4996[] c4996Arr = this.f18679;
                    int i = this.f18681;
                    this.f18681 = i + 1;
                    c4996Arr[i] = c4996;
                    this.f18674 = null;
                }
                while (!this.f18675.isEmpty()) {
                    C4996 c49962 = (C4996) this.f18675.removeFirst();
                    c49962.mo3629();
                    C4996[] c4996Arr2 = this.f18679;
                    int i2 = this.f18681;
                    this.f18681 = i2 + 1;
                    c4996Arr2[i2] = c49962;
                }
                while (!this.f18677.isEmpty()) {
                    ((AbstractC5001) this.f18677.removeFirst()).mo743();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʼˎ */
    public abstract DecoderException mo745(Throwable th);

    @Override // p421.InterfaceC4995
    /* renamed from: ʽ */
    public final void mo9157(long j) {
        boolean z;
        synchronized (this.f18684) {
            try {
                if (this.f18681 != this.f18679.length && !this.f18680) {
                    z = false;
                    AbstractC3731.m7857(z);
                    this.f18682 = j;
                }
                z = true;
                AbstractC3731.m7857(z);
                this.f18682 = j;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˆʾ */
    public abstract DecoderException mo747(C4996 c4996, AbstractC5001 abstractC5001, boolean z);

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final boolean m9846(long j) {
        boolean z;
        synchronized (this.f18684) {
            long j2 = this.f18682;
            z = j2 == -9223372036854775807L || j >= j2;
        }
        return z;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m9847(AbstractC5001 abstractC5001) {
        synchronized (this.f18684) {
            abstractC5001.mo744();
            AbstractC5001[] abstractC5001Arr = this.f18687;
            int i = this.f18683;
            this.f18683 = i + 1;
            abstractC5001Arr[i] = abstractC5001;
            if (!this.f18675.isEmpty() && this.f18683 > 0) {
                this.f18684.notify();
            }
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m9848() {
        DecoderException mo745;
        synchronized (this.f18684) {
            while (!this.f18686) {
                try {
                    if (!this.f18675.isEmpty() && this.f18683 > 0) {
                        break;
                    }
                    this.f18684.wait();
                } finally {
                }
            }
            if (this.f18686) {
                return false;
            }
            C4996 c4996 = (C4996) this.f18675.removeFirst();
            AbstractC5001[] abstractC5001Arr = this.f18687;
            int i = this.f18683 - 1;
            this.f18683 = i;
            AbstractC5001 abstractC5001 = abstractC5001Arr[i];
            boolean z = this.f18680;
            this.f18680 = false;
            if (c4996.m3177(4)) {
                abstractC5001.m3183(4);
            } else {
                abstractC5001.f18690 = c4996.f18671;
                if (c4996.m3177(134217728)) {
                    abstractC5001.m3183(134217728);
                }
                if (!m9846(c4996.f18671)) {
                    abstractC5001.f18692 = true;
                }
                try {
                    mo745 = mo747(c4996, abstractC5001, z);
                } catch (OutOfMemoryError e) {
                    mo745 = mo745(e);
                } catch (RuntimeException e2) {
                    mo745 = mo745(e2);
                }
                if (mo745 != null) {
                    synchronized (this.f18684) {
                        this.f18676 = mo745;
                    }
                    return false;
                }
            }
            synchronized (this.f18684) {
                try {
                    if (this.f18680) {
                        abstractC5001.mo743();
                    } else if (abstractC5001.f18692) {
                        this.f18678++;
                        abstractC5001.mo743();
                    } else {
                        abstractC5001.f18691 = this.f18678;
                        this.f18678 = 0;
                        this.f18677.addLast(abstractC5001);
                    }
                    c4996.mo3629();
                    C4996[] c4996Arr = this.f18679;
                    int i2 = this.f18681;
                    this.f18681 = i2 + 1;
                    c4996Arr[i2] = c4996;
                } finally {
                }
            }
            return true;
        }
    }

    /* renamed from: ᵎﹶ */
    public abstract C4996 mo748();

    @Override // p421.InterfaceC4995
    /* renamed from: ᵔʾ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final void mo9162(C4996 c4996) {
        synchronized (this.f18684) {
            try {
                DecoderException decoderException = this.f18676;
                if (decoderException != null) {
                    throw decoderException;
                }
                AbstractC3731.m7849(c4996 == this.f18674);
                this.f18675.addLast(c4996);
                if (!this.f18675.isEmpty() && this.f18683 > 0) {
                    this.f18684.notify();
                }
                this.f18674 = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ᵔᵢ */
    public abstract AbstractC5001 mo749();

    @Override // p421.InterfaceC4995
    /* renamed from: ﹳٴ */
    public void mo750() {
        synchronized (this.f18684) {
            this.f18686 = true;
            this.f18684.notify();
        }
        try {
            this.f18685.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // p421.InterfaceC4995
    /* renamed from: ﾞʻ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final AbstractC5001 mo9159() {
        synchronized (this.f18684) {
            try {
                DecoderException decoderException = this.f18676;
                if (decoderException != null) {
                    throw decoderException;
                }
                if (this.f18677.isEmpty()) {
                    return null;
                }
                return (AbstractC5001) this.f18677.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p421.InterfaceC4995
    /* renamed from: ﾞᴵ */
    public final Object mo9163() {
        C4996 c4996;
        synchronized (this.f18684) {
            try {
                DecoderException decoderException = this.f18676;
                if (decoderException != null) {
                    throw decoderException;
                }
                AbstractC3731.m7857(this.f18674 == null);
                int i = this.f18681;
                if (i == 0) {
                    c4996 = null;
                } else {
                    C4996[] c4996Arr = this.f18679;
                    int i2 = i - 1;
                    this.f18681 = i2;
                    c4996 = c4996Arr[i2];
                }
                this.f18674 = c4996;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4996;
    }
}

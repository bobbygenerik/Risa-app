package p256;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MenuItem;
import androidx.datastore.preferences.protobuf.AbstractC0016;
import com.bumptech.glide.ʽ;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import javax.crypto.AEADBadTagException;
import p059.C1520;
import p255.C3368;
import p342.InterfaceMenuItemC4266;
import p353.MenuItemC4324;
import p363.LayoutInflaterFactory2C4430;

/* renamed from: יٴ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3376 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object f13190;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object f13191;

    public AbstractC3376(Context context) {
        this.f13191 = context;
    }

    public AbstractC3376(LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430) {
        this.f13190 = layoutInflaterFactory2C4430;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static byte[] m7246(byte[] bArr, ByteBuffer byteBuffer) {
        int length = bArr.length % 16 == 0 ? bArr.length : (bArr.length + 16) - (bArr.length % 16);
        int remaining = byteBuffer.remaining();
        int i = remaining % 16;
        int i2 = (i == 0 ? remaining : (remaining + 16) - i) + length;
        ByteBuffer order = ByteBuffer.allocate(i2 + 16).order(ByteOrder.LITTLE_ENDIAN);
        order.put(bArr);
        order.position(length);
        order.put(byteBuffer);
        order.position(i2);
        order.putLong(bArr.length);
        order.putLong(remaining);
        return order.array();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m7247() {
        C1520 c1520 = (C1520) this.f13191;
        if (c1520 != null) {
            try {
                ((LayoutInflaterFactory2C4430) this.f13190).f16528.unregisterReceiver(c1520);
            } catch (IllegalArgumentException unused) {
            }
            this.f13191 = null;
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public abstract AbstractC0016 mo7248(int i, byte[] bArr);

    /* renamed from: ˈ, reason: contains not printable characters */
    public abstract IntentFilter mo7249();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public byte[] m7250(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) {
        if (byteBuffer.remaining() < 16) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        int position = byteBuffer.position();
        byte[] bArr3 = new byte[16];
        byteBuffer.position(byteBuffer.limit() - 16);
        byteBuffer.get(bArr3);
        byteBuffer.position(position);
        byteBuffer.limit(byteBuffer.limit() - 16);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        try {
            byte[] bArr4 = new byte[32];
            ((AbstractC0016) this.f13190).m233(0, bArr).get(bArr4);
            if (!MessageDigest.isEqual(ʽ.ﹳٴ(bArr4, m7246(bArr2, byteBuffer)), bArr3)) {
                throw new GeneralSecurityException("invalid MAC");
            }
            byteBuffer.position(position);
            AbstractC0016 abstractC0016 = (AbstractC0016) this.f13191;
            abstractC0016.getClass();
            ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
            abstractC0016.m232(bArr, allocate, byteBuffer);
            return allocate.array();
        } catch (GeneralSecurityException e) {
            throw new AEADBadTagException(e.toString());
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public abstract void mo7251();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public abstract int mo7252();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public MenuItem m7253(MenuItem menuItem) {
        if (!(menuItem instanceof InterfaceMenuItemC4266)) {
            return menuItem;
        }
        InterfaceMenuItemC4266 interfaceMenuItemC4266 = (InterfaceMenuItemC4266) menuItem;
        if (((C3368) this.f13190) == null) {
            this.f13190 = new C3368(0);
        }
        MenuItem menuItem2 = (MenuItem) ((C3368) this.f13190).get(interfaceMenuItemC4266);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemC4324 menuItemC4324 = new MenuItemC4324((Context) this.f13191, interfaceMenuItemC4266);
        ((C3368) this.f13190).put(interfaceMenuItemC4266, menuItemC4324);
        return menuItemC4324;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public void m7254() {
        m7247();
        IntentFilter mo7249 = mo7249();
        if (mo7249.countActions() == 0) {
            return;
        }
        if (((C1520) this.f13191) == null) {
            this.f13191 = new C1520(4, this);
        }
        ((LayoutInflaterFactory2C4430) this.f13190).f16528.registerReceiver((C1520) this.f13191, mo7249);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m7255(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (byteBuffer.remaining() < bArr2.length + 16) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        int position = byteBuffer.position();
        AbstractC0016 abstractC0016 = (AbstractC0016) this.f13191;
        abstractC0016.getClass();
        if (byteBuffer.remaining() < bArr2.length) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        abstractC0016.m232(bArr, byteBuffer, ByteBuffer.wrap(bArr2));
        byteBuffer.position(position);
        byteBuffer.limit(byteBuffer.limit() - 16);
        if (bArr3 == null) {
            bArr3 = new byte[0];
        }
        byte[] bArr4 = new byte[32];
        ((AbstractC0016) this.f13190).m233(0, bArr).get(bArr4);
        byte[] bArr5 = ʽ.ﹳٴ(bArr4, m7246(bArr3, byteBuffer));
        byteBuffer.limit(byteBuffer.limit() + 16);
        byteBuffer.put(bArr5);
    }
}

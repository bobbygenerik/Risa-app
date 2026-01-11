package p090;

import android.os.FileObserver;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import p329.InterfaceC4106;

/* renamed from: ʿᵢ.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class FileObserverC1785 extends FileObserver {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f7215;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object f7214 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final LinkedHashMap f7213 = new LinkedHashMap();

    public FileObserverC1785(String str) {
        super(str, 128);
        this.f7215 = new CopyOnWriteArrayList();
    }

    @Override // android.os.FileObserver
    public final void onEvent(int i, String str) {
        Iterator it = this.f7215.iterator();
        while (it.hasNext()) {
            ((InterfaceC4106) it.next()).mo3844(str);
        }
    }
}

package j$.util.stream;

import j$.util.Spliterator;
import java.util.Iterator;

/* renamed from: j$.util.stream.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC5483g extends AutoCloseable {
    boolean isParallel();

    Iterator iterator();

    InterfaceC5483g onClose(Runnable runnable);

    InterfaceC5483g parallel();

    InterfaceC5483g sequential();

    Spliterator spliterator();

    InterfaceC5483g unordered();
}

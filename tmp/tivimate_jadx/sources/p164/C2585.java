package p164;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileTime;
import p035.C1233;
import ᵎˉ.ⁱˊ;

/* renamed from: ˊᐧ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2585 extends C2597 {
    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static Long m5788(FileTime fileTime) {
        long millis = fileTime.toMillis();
        Long valueOf = Long.valueOf(millis);
        if (millis != 0) {
            return valueOf;
        }
        return null;
    }

    @Override // p164.C2597
    public final String toString() {
        return "NioSystemFileSystem";
    }

    @Override // p164.C2597, p164.AbstractC2598
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo5789(C2575 c2575, C2575 c25752) {
        try {
            Files.move(Paths.get(c2575.f9777.m5748(), new String[0]), Paths.get(c25752.f9777.m5748(), new String[0]), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override // p164.C2597, p164.AbstractC2598
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final C1233 mo5790(C2575 c2575) {
        LinkOption linkOption;
        Path path = Paths.get(c2575.f9777.m5748(), new String[0]);
        try {
            linkOption = LinkOption.NOFOLLOW_LINKS;
            BasicFileAttributes readAttributes = Files.readAttributes(path, (Class<BasicFileAttributes>) BasicFileAttributes.class, linkOption);
            Path readSymbolicLink = readAttributes.isSymbolicLink() ? Files.readSymbolicLink(path) : null;
            boolean isRegularFile = readAttributes.isRegularFile();
            boolean isDirectory = readAttributes.isDirectory();
            if (readSymbolicLink != null) {
                String str = C2575.f9776;
                ⁱˊ.ᵔᵢ(readSymbolicLink.toString(), false);
            }
            Long valueOf = Long.valueOf(readAttributes.size());
            FileTime creationTime = readAttributes.creationTime();
            Long m5788 = creationTime != null ? m5788(creationTime) : null;
            FileTime lastModifiedTime = readAttributes.lastModifiedTime();
            Long m57882 = lastModifiedTime != null ? m5788(lastModifiedTime) : null;
            FileTime lastAccessTime = readAttributes.lastAccessTime();
            return new C1233(isRegularFile, isDirectory, valueOf, m5788, m57882, lastAccessTime != null ? m5788(lastAccessTime) : null);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }
}

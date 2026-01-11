package p332;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.DosFileAttributeView;
import java.nio.file.attribute.DosFileAttributes;
import java.nio.file.attribute.PosixFileAttributeView;
import java.nio.file.attribute.PosixFilePermission;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import p010.AbstractC0844;
import p035.AbstractC1220;
import p137.AbstractC2305;
import p261.C3411;
import p275.C3507;

/* renamed from: ᴵﾞ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4197 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final byte[] f15640 = {0, 0, -92, -127};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f15639 = {0, 0, -19, 65};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static boolean m8588(File file) {
        try {
            return Files.isSymbolicLink(file.toPath());
        } catch (Error | Exception unused) {
            return false;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static byte[] m8589(File file) {
        try {
            if (!Files.isSymbolicLink(file.toPath()) && !file.exists()) {
                return new byte[4];
            }
            Path path = file.toPath();
            if (m8590()) {
                return m8595(path);
            }
            if (!System.getProperty("os.name").toLowerCase().contains("mac") && !System.getProperty("os.name").toLowerCase().contains("nux")) {
                return new byte[4];
            }
            return m8593(path);
        } catch (NoSuchMethodError unused) {
            return new byte[4];
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static boolean m8590() {
        return System.getProperty("os.name").toLowerCase().contains("win");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static ArrayList m8591(File file, C3411 c3411) {
        if (file == null) {
            throw new IOException("input path is null, cannot read files in the directory");
        }
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        if (file.isDirectory() && file.canRead() && listFiles != null) {
            for (File file2 : listFiles) {
                if (!file2.isHidden() || c3411.f13392) {
                    arrayList.add(file2);
                    int i = c3411.f13395;
                    boolean m8588 = m8588(file2);
                    if ((m8588 && !AbstractC0844.m3021(1, i)) || (!m8588 && file2.isDirectory())) {
                        arrayList.addAll(m8591(file2, c3411));
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static byte m8592(boolean z, byte b, int i) {
        return z ? AbstractC4200.m8604(b, i) : b;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static byte[] m8593(Path path) {
        LinkOption linkOption;
        PosixFilePermission posixFilePermission;
        PosixFilePermission posixFilePermission2;
        PosixFilePermission posixFilePermission3;
        PosixFilePermission posixFilePermission4;
        PosixFilePermission posixFilePermission5;
        PosixFilePermission posixFilePermission6;
        PosixFilePermission posixFilePermission7;
        PosixFilePermission posixFilePermission8;
        PosixFilePermission posixFilePermission9;
        byte[] bArr = new byte[4];
        try {
            linkOption = LinkOption.NOFOLLOW_LINKS;
            Set<PosixFilePermission> permissions = ((PosixFileAttributeView) Files.getFileAttributeView(path, PosixFileAttributeView.class, linkOption)).readAttributes().permissions();
            boolean isSymbolicLink = Files.isSymbolicLink(path);
            if (isSymbolicLink) {
                byte m8604 = AbstractC4200.m8604(bArr[3], 7);
                bArr[3] = m8604;
                bArr[3] = AbstractC4200.m8607(m8604, 6);
            } else {
                bArr[3] = m8592(Files.isRegularFile(path, new LinkOption[0]), bArr[3], 7);
                bArr[3] = m8592(Files.isDirectory(path, new LinkOption[0]), bArr[3], 6);
            }
            bArr[3] = m8592(isSymbolicLink, bArr[3], 5);
            posixFilePermission = PosixFilePermission.OWNER_READ;
            bArr[3] = m8592(permissions.contains(posixFilePermission), bArr[3], 0);
            posixFilePermission2 = PosixFilePermission.OWNER_WRITE;
            bArr[2] = m8592(permissions.contains(posixFilePermission2), bArr[2], 7);
            posixFilePermission3 = PosixFilePermission.OWNER_EXECUTE;
            bArr[2] = m8592(permissions.contains(posixFilePermission3), bArr[2], 6);
            posixFilePermission4 = PosixFilePermission.GROUP_READ;
            bArr[2] = m8592(permissions.contains(posixFilePermission4), bArr[2], 5);
            posixFilePermission5 = PosixFilePermission.GROUP_WRITE;
            bArr[2] = m8592(permissions.contains(posixFilePermission5), bArr[2], 4);
            posixFilePermission6 = PosixFilePermission.GROUP_EXECUTE;
            bArr[2] = m8592(permissions.contains(posixFilePermission6), bArr[2], 3);
            posixFilePermission7 = PosixFilePermission.OTHERS_READ;
            bArr[2] = m8592(permissions.contains(posixFilePermission7), bArr[2], 2);
            posixFilePermission8 = PosixFilePermission.OTHERS_WRITE;
            bArr[2] = m8592(permissions.contains(posixFilePermission8), bArr[2], 1);
            posixFilePermission9 = PosixFilePermission.OTHERS_EXECUTE;
            bArr[2] = m8592(permissions.contains(posixFilePermission9), bArr[2], 0);
        } catch (IOException unused) {
        }
        return bArr;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static boolean m8594(String str) {
        return str.endsWith("/") || str.endsWith("\\");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static byte[] m8595(Path path) {
        LinkOption linkOption;
        byte[] bArr = new byte[4];
        try {
            Class m7459 = C3507.m7459();
            linkOption = LinkOption.NOFOLLOW_LINKS;
            DosFileAttributeView m7463 = C3507.m7463(Files.getFileAttributeView(path, m7459, linkOption));
            if (m7463 != null) {
                DosFileAttributes readAttributes = m7463.readAttributes();
                bArr[0] = m8592(readAttributes.isArchive(), m8592(readAttributes.isDirectory(), m8592(readAttributes.isSystem(), m8592(readAttributes.isHidden(), m8592(readAttributes.isReadOnly(), (byte) 0, 0), 1), 2), 4), 5);
            }
        } catch (IOException unused) {
        }
        return bArr;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m8596(Path path, byte[] bArr) {
        PosixFilePermission posixFilePermission;
        PosixFilePermission posixFilePermission2;
        PosixFilePermission posixFilePermission3;
        PosixFilePermission posixFilePermission4;
        PosixFilePermission posixFilePermission5;
        PosixFilePermission posixFilePermission6;
        PosixFilePermission posixFilePermission7;
        PosixFilePermission posixFilePermission8;
        PosixFilePermission posixFilePermission9;
        LinkOption linkOption;
        if (bArr == null || bArr.length == 0) {
            return;
        }
        try {
            if (m8590()) {
                if (bArr[0] == 0) {
                    return;
                }
                Class m7459 = C3507.m7459();
                linkOption = LinkOption.NOFOLLOW_LINKS;
                DosFileAttributeView m7463 = C3507.m7463(Files.getFileAttributeView(path, m7459, linkOption));
                if (m7463 != null) {
                    m7463.setReadOnly(AbstractC4200.m8612(bArr[0], 0));
                    m7463.setHidden(AbstractC4200.m8612(bArr[0], 1));
                    m7463.setSystem(AbstractC4200.m8612(bArr[0], 2));
                    m7463.setArchive(AbstractC4200.m8612(bArr[0], 5));
                }
            }
            if (!System.getProperty("os.name").toLowerCase().contains("mac") && !System.getProperty("os.name").toLowerCase().contains("nux")) {
                return;
            }
            if (bArr[2] == 0 && bArr[3] == 0) {
                return;
            }
            HashSet hashSet = new HashSet();
            byte b = bArr[3];
            posixFilePermission = PosixFilePermission.OWNER_READ;
            m8599(b, 0, hashSet, posixFilePermission);
            byte b2 = bArr[2];
            posixFilePermission2 = PosixFilePermission.OWNER_WRITE;
            m8599(b2, 7, hashSet, posixFilePermission2);
            byte b3 = bArr[2];
            posixFilePermission3 = PosixFilePermission.OWNER_EXECUTE;
            m8599(b3, 6, hashSet, posixFilePermission3);
            byte b4 = bArr[2];
            posixFilePermission4 = PosixFilePermission.GROUP_READ;
            m8599(b4, 5, hashSet, posixFilePermission4);
            byte b5 = bArr[2];
            posixFilePermission5 = PosixFilePermission.GROUP_WRITE;
            m8599(b5, 4, hashSet, posixFilePermission5);
            byte b6 = bArr[2];
            posixFilePermission6 = PosixFilePermission.GROUP_EXECUTE;
            m8599(b6, 3, hashSet, posixFilePermission6);
            byte b7 = bArr[2];
            posixFilePermission7 = PosixFilePermission.OTHERS_READ;
            m8599(b7, 2, hashSet, posixFilePermission7);
            byte b8 = bArr[2];
            posixFilePermission8 = PosixFilePermission.OTHERS_WRITE;
            m8599(b8, 1, hashSet, posixFilePermission8);
            byte b9 = bArr[2];
            posixFilePermission9 = PosixFilePermission.OTHERS_EXECUTE;
            m8599(b9, 0, hashSet, posixFilePermission9);
            Files.setPosixFilePermissions(path, hashSet);
        } catch (IOException unused) {
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static String m8597(String str) {
        if (!AbstractC4200.m8608(str)) {
            throw new IOException("zip file name is empty or null, cannot determine zip file name");
        }
        if (str.contains(System.getProperty("file.separator"))) {
            str = str.substring(str.lastIndexOf(System.getProperty("file.separator")) + 1);
        }
        return str.endsWith(".zip") ? str.substring(0, str.lastIndexOf(".")) : str;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static File[] m8598(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".");
        if (lastIndexOf != -1) {
            name = name.substring(0, lastIndexOf);
        }
        File[] listFiles = file.getParentFile().listFiles(new C4199(name));
        if (listFiles == null) {
            return new File[0];
        }
        Arrays.sort(listFiles);
        return listFiles;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m8599(byte b, int i, HashSet hashSet, PosixFilePermission posixFilePermission) {
        if (AbstractC4200.m8612(b, i)) {
            hashSet.add(posixFilePermission);
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static String m8600(File file) {
        try {
            return Files.readSymbolicLink(file.toPath()).toString();
        } catch (Error | Exception unused) {
            return "";
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static String m8601(File file, C3411 c3411) {
        LinkOption linkOption;
        try {
            File file2 = new File(file.getCanonicalPath());
            String str = c3411.f13387;
            if (!AbstractC4200.m8608(str)) {
                if (m8588(file2)) {
                    Path path = file2.toPath();
                    linkOption = LinkOption.NOFOLLOW_LINKS;
                    str = path.toRealPath(linkOption).getFileName().toString();
                } else {
                    str = file2.getName();
                }
            }
            if (file2.isDirectory()) {
                str = str + "/";
            }
            if (AbstractC4200.m8608(str)) {
                return str;
            }
            StringBuilder m5370 = AbstractC2305.m5370("fileName to add to zip is empty or null. fileName: '", str, "' DefaultFolderPath: 'null' FileNameInZip: ");
            m5370.append(c3411.f13387);
            String sb = m5370.toString();
            if (m8588(file)) {
                sb = AbstractC1220.m3791(sb, "isSymlink: true ");
            }
            if (AbstractC4200.m8608(null)) {
                sb = AbstractC2305.m5378("rootFolderNameInZip: '", null, "' ");
            }
            throw new IOException(sb);
        } catch (IOException e) {
            throw new IOException(e);
        }
    }
}

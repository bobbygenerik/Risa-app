.class public abstract Lᴵﾞ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Ljava/nio/charset/Charset;

.field public static final ⁱˊ:Ljava/nio/charset/Charset;

.field public static final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lᴵﾞ/ˈ;->ﹳٴ:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lᴵﾞ/ˈ;->ⁱˊ:Ljava/nio/charset/Charset;

    sput-object v0, Lᴵﾞ/ˈ;->ʽ:Ljava/nio/charset/Charset;

    return-void
.end method

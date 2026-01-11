.class public final Lʿᵢ/ٴᵢ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# static fields
.field public static final ᴵˊ:Lʿᵢ/ٴᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʿᵢ/ٴᵢ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˊʼ/ٴﹶ;-><init>(I)V

    sput-object v0, Lʿᵢ/ٴᵢ;->ᴵˊ:Lʿᵢ/ٴᵢ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    new-instance p1, Lʿᵢ/ـﹶ;

    invoke-direct {p1}, Lʿᵢ/ـﹶ;-><init>()V

    return-object p1
.end method

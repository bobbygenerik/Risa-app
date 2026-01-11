.class public abstract Lـʾ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:[Ljava/lang/String;

.field public static final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "WrkDbPathHelper"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lـʾ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    const-string v0, "-shm"

    const-string v1, "-wal"

    const-string v2, "-journal"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lـʾ/ᵔʾ;->ⁱˊ:[Ljava/lang/String;

    return-void
.end method

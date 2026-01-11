.class public final Lˆי/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆי/ˆʾ;


# static fields
.field public static final ʽʽ:Lﹳˋ/ʼˎ;


# instance fields
.field public final ʾˋ:Ljava/lang/Object;

.field public ᴵˊ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹳˋ/ʼˎ;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lﹳˋ/ʼˎ;-><init>(I)V

    sput-object v0, Lˆי/ˑﹳ;->ʽʽ:Lﹳˋ/ʼˎ;

    return-void
.end method

.method public constructor <init>(Lˑˋ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆי/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    sget-object p1, Lˆי/ˑﹳ;->ʽʽ:Lﹳˋ/ʼˎ;

    iput-object p1, p0, Lˆי/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆי/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    iput-object p2, p0, Lˆי/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ﹳٴ(Lˆי/ʼˎ;I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˆי/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [I

    :try_start_0
    iget-object v1, p0, Lˆי/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, [B

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1, v1, v3, p2}, Lˆי/ʼˎ;->read([BII)I

    aget v1, v0, v2

    add-int/2addr v1, p2

    aput v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2
.end method

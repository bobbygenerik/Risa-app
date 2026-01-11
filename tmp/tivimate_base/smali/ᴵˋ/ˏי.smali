.class public final Lᴵˋ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile ʽ:Lᴵˋ/ˏי;

.field public static final ⁱˊ:Ljava/lang/Object;


# instance fields
.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵˋ/ˏי;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᴵˋ/ˏי;->ﹳٴ:I

    return-void
.end method

.method public static ˑﹳ()Lᴵˋ/ˏי;
    .locals 3

    .prologue
    sget-object v0, Lᴵˋ/ˏי;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lᴵˋ/ˏי;->ʽ:Lᴵˋ/ˏי;

    if-nez v1, :cond_0

    new-instance v1, Lᴵˋ/ˏי;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lᴵˋ/ˏי;-><init>(I)V

    sput-object v1, Lᴵˋ/ˏי;->ʽ:Lᴵˋ/ˏי;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lᴵˋ/ˏי;->ʽ:Lᴵˋ/ˏי;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "WM-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ʽ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    iget v0, p0, Lᴵˋ/ˏי;->ﹳٴ:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public final ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    iget v0, p0, Lᴵˋ/ˏי;->ﹳٴ:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public final ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    iget v0, p0, Lᴵˋ/ˏי;->ﹳٴ:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public final ⁱˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    iget v0, p0, Lᴵˋ/ˏי;->ﹳٴ:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public final ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    iget v0, p0, Lᴵˋ/ˏי;->ﹳٴ:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public final ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    iget v0, p0, Lᴵˋ/ˏי;->ﹳٴ:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    nop

    :cond_0
    return-void
.end method

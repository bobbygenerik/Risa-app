.class public final Lـˊ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lـˊ/ﾞᴵ;


# instance fields
.field public ʽʽ:Landroid/net/Uri;

.field public final ʾˋ:Lـˊ/ﾞᴵ;

.field public ᴵˊ:J


# direct methods
.method public constructor <init>(Lـˊ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lـˊ/ʼᐧ;->ʾˋ:Lـˊ/ﾞᴵ;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lـˊ/ʼᐧ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->close()V

    return-void
.end method

.method public final read([BII)I
    .locals 2

    .prologue
    iget-object v0, p0, Lـˊ/ʼᐧ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0, p1, p2, p3}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lـˊ/ʼᐧ;->ᴵˊ:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lـˊ/ʼᐧ;->ᴵˊ:J

    :cond_0
    return p1
.end method

.method public final ʽʽ(Lـˊ/ᵔᵢ;)J
    .locals 3

    .prologue
    iget-object v0, p0, Lـˊ/ʼᐧ;->ʾˋ:Lـˊ/ﾞᴵ;

    iget-object v1, p1, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    iput-object v1, p0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :try_start_0
    invoke-interface {v0, p1}, Lـˊ/ﾞᴵ;->ʽʽ(Lـˊ/ᵔᵢ;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->יـ()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    :cond_0
    invoke-interface {v0}, Lـˊ/ﾞᴵ;->ٴﹶ()Ljava/util/Map;

    return-wide v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->יـ()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    :cond_1
    invoke-interface {v0}, Lـˊ/ﾞᴵ;->ٴﹶ()Ljava/util/Map;

    throw p1
.end method

.method public final ˉʿ(Lـˊ/ᵔﹳ;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lـˊ/ʼᐧ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0, p1}, Lـˊ/ﾞᴵ;->ˉʿ(Lـˊ/ᵔﹳ;)V

    return-void
.end method

.method public final יـ()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lـˊ/ʼᐧ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->יـ()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final ٴﹶ()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lـˊ/ʼᐧ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->ٴﹶ()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

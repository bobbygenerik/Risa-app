.class public final Lʼٴ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽᐧ/ˈ;


# instance fields
.field public final ʾˋ:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lʼٴ/ʼᐧ;->ʾˋ:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ᵔʾ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ﹳٴ(J)I
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public ﾞʻ(J)Ljava/util/List;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lʼٴ/ʼᐧ;->ʾˋ:Ljava/util/List;

    return-object p1

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public ﾞᴵ(I)J
    .locals 2

    .prologue
    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

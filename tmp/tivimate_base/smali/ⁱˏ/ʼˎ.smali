.class public final Lⁱˏ/ʼˎ;
.super Lﹶˈ/ﾞᴵ;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ᴵˊ:Lⁱˏ/ʼˎ;


# instance fields
.field public final ʾˋ:Lⁱˏ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lⁱˏ/ʼˎ;

    sget-object v1, Lⁱˏ/ﾞᴵ;->ᵔٴ:Lⁱˏ/ﾞᴵ;

    sget-object v1, Lⁱˏ/ﾞᴵ;->ᵔٴ:Lⁱˏ/ﾞᴵ;

    invoke-direct {v0, v1}, Lⁱˏ/ʼˎ;-><init>(Lⁱˏ/ﾞᴵ;)V

    sput-object v0, Lⁱˏ/ʼˎ;->ᴵˊ:Lⁱˏ/ʼˎ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lⁱˏ/ﾞᴵ;

    invoke-direct {v0}, Lⁱˏ/ﾞᴵ;-><init>()V

    invoke-direct {p0, v0}, Lⁱˏ/ʼˎ;-><init>(Lⁱˏ/ﾞᴵ;)V

    return-void
.end method

.method public constructor <init>(Lⁱˏ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lⁱˏ/ﾞᴵ;->ﹳٴ(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    invoke-virtual {v0}, Lⁱˏ/ﾞᴵ;->ʽ()V

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    invoke-virtual {v0}, Lⁱˏ/ﾞᴵ;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lⁱˏ/ﾞᴵ;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    invoke-virtual {v0}, Lⁱˏ/ﾞᴵ;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lⁱˏ/ˈ;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lⁱˏ/ˈ;-><init>(Lⁱˏ/ﾞᴵ;I)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    invoke-virtual {v0}, Lⁱˏ/ﾞᴵ;->ʽ()V

    invoke-virtual {v0, p1}, Lⁱˏ/ﾞᴵ;->ﾞᴵ(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lⁱˏ/ﾞᴵ;->ʼˎ(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    invoke-virtual {v0}, Lⁱˏ/ﾞᴵ;->ʽ()V

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    invoke-virtual {v0}, Lⁱˏ/ﾞᴵ;->ʽ()V

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    iget v0, v0, Lⁱˏ/ﾞᴵ;->ᵎⁱ:I

    return v0
.end method

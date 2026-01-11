.class public final Lˊᐧ/ˏי;
.super Lﹶˈ/ˈ;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final ʾˋ:[Lˊᐧ/ʼˎ;

.field public final ᴵˊ:[I


# direct methods
.method public constructor <init>([Lˊᐧ/ʼˎ;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊᐧ/ˏי;->ʾˋ:[Lˊᐧ/ʼˎ;

    iput-object p2, p0, Lˊᐧ/ˏי;->ᴵˊ:[I

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lˊᐧ/ʼˎ;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lˊᐧ/ʼˎ;

    invoke-super {p0, p1}, Lﹶˈ/ﹳٴ;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lˊᐧ/ˏי;->ʾˋ:[Lˊᐧ/ʼˎ;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    instance-of v0, p1, Lˊᐧ/ʼˎ;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lˊᐧ/ʼˎ;

    invoke-super {p0, p1}, Lﹶˈ/ˈ;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    instance-of v0, p1, Lˊᐧ/ʼˎ;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lˊᐧ/ʼˎ;

    invoke-super {p0, p1}, Lﹶˈ/ˈ;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Lˊᐧ/ˏי;->ʾˋ:[Lˊᐧ/ʼˎ;

    array-length v0, v0

    return v0
.end method

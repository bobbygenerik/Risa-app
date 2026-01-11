.class public final Lˏ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/HashSet;

.field public ˈ:I

.field public ˑﹳ:I

.field public final ᵎﹶ:Ljava/util/HashSet;

.field public final ⁱˊ:Ljava/util/HashSet;

.field public ﹳٴ:Ljava/lang/String;

.field public ﾞᴵ:Lˏ/ˈ;


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lˏ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lˏ/ﹳٴ;->ⁱˊ:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lˏ/ﹳٴ;->ʽ:Ljava/util/HashSet;

    const/4 v1, 0x0

    iput v1, p0, Lˏ/ﹳٴ;->ˈ:I

    iput v1, p0, Lˏ/ﹳٴ;->ˑﹳ:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lˏ/ﹳٴ;->ᵎﹶ:Ljava/util/HashSet;

    invoke-static {p1}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p2, v1

    const-string v2, "Null interface"

    invoke-static {v0, v2}, Lﹳˋ/ٴﹶ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lˏ/ﹳٴ;->ⁱˊ:Ljava/util/HashSet;

    invoke-static {v0}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lˏ/ˉˆ;[Lˏ/ˉˆ;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lˏ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lˏ/ﹳٴ;->ⁱˊ:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lˏ/ﹳٴ;->ʽ:Ljava/util/HashSet;

    const/4 v1, 0x0

    iput v1, p0, Lˏ/ﹳٴ;->ˈ:I

    iput v1, p0, Lˏ/ﹳٴ;->ˑﹳ:I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lˏ/ﹳٴ;->ᵎﹶ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p2, v1

    const-string v2, "Null interface"

    invoke-static {v0, v2}, Lﹳˋ/ٴﹶ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lˏ/ﹳٴ;->ⁱˊ:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 2

    .prologue
    iget v0, p0, Lˏ/ﹳٴ;->ˈ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lˏ/ﹳٴ;->ˈ:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instantiation type has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ⁱˊ()Lˏ/ⁱˊ;
    .locals 9

    .prologue
    iget-object v0, p0, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lˏ/ⁱˊ;

    iget-object v2, p0, Lˏ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lˏ/ﹳٴ;->ⁱˊ:Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v0, p0, Lˏ/ﹳٴ;->ʽ:Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v5, p0, Lˏ/ﹳٴ;->ˈ:I

    iget v6, p0, Lˏ/ﹳٴ;->ˑﹳ:I

    iget-object v7, p0, Lˏ/ﹳٴ;->ﾞᴵ:Lˏ/ˈ;

    iget-object v8, p0, Lˏ/ﹳٴ;->ᵎﹶ:Ljava/util/HashSet;

    invoke-direct/range {v1 .. v8}, Lˏ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILˏ/ˈ;Ljava/util/Set;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required property: factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳٴ(Lˏ/ʼˎ;)V
    .locals 2

    .prologue
    iget-object v0, p1, Lˏ/ʼˎ;->ﹳٴ:Lˏ/ˉˆ;

    iget-object v1, p0, Lˏ/ﹳٴ;->ⁱˊ:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lˏ/ﹳٴ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Components are not allowed to depend on interfaces they themselves provide."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

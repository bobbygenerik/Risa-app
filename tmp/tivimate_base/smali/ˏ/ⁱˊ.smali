.class public final Lˏ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/Set;

.field public final ˈ:I

.field public final ˑﹳ:I

.field public final ᵎﹶ:Ljava/util/Set;

.field public final ⁱˊ:Ljava/util/Set;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:Lˏ/ˈ;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILˏ/ˈ;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˏ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lˏ/ⁱˊ;->ⁱˊ:Ljava/util/Set;

    invoke-static {p3}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lˏ/ⁱˊ;->ʽ:Ljava/util/Set;

    iput p4, p0, Lˏ/ⁱˊ;->ˈ:I

    iput p5, p0, Lˏ/ⁱˊ;->ˑﹳ:I

    iput-object p6, p0, Lˏ/ⁱˊ;->ﾞᴵ:Lˏ/ˈ;

    invoke-static {p7}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lˏ/ⁱˊ;->ᵎﹶ:Ljava/util/Set;

    return-void
.end method

.method public static varargs ʽ(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lˏ/ⁱˊ;
    .locals 10

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    array-length p1, p2

    const/4 v6, 0x0

    move v2, v6

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p2, v2

    const-string v4, "Null interface"

    invoke-static {v3, v4}, Lﹳˋ/ٴﹶ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Lʻʿ/ᵔᵢ;

    invoke-direct {v8, p0}, Lʻʿ/ᵔᵢ;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lˏ/ⁱˊ;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    move v7, v6

    invoke-direct/range {v2 .. v9}, Lˏ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILˏ/ˈ;Ljava/util/Set;)V

    return-object v2
.end method

.method public static ⁱˊ(Lˏ/ˉˆ;)Lˏ/ﹳٴ;
    .locals 2

    new-instance v0, Lˏ/ﹳٴ;

    const/4 v1, 0x0

    new-array v1, v1, [Lˏ/ˉˆ;

    invoke-direct {v0, p0, v1}, Lˏ/ﹳٴ;-><init>(Lˏ/ˉˆ;[Lˏ/ˉˆ;)V

    return-object v0
.end method

.method public static ﹳٴ(Ljava/lang/Class;)Lˏ/ﹳٴ;
    .locals 2

    new-instance v0, Lˏ/ﹳٴ;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lˏ/ﹳٴ;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˏ/ⁱˊ;->ⁱˊ:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˏ/ⁱˊ;->ˈ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˏ/ⁱˊ;->ˑﹳ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˏ/ⁱˊ;->ʽ:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

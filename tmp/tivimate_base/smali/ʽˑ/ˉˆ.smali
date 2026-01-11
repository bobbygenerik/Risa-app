.class public final Lʽˑ/ˉˆ;
.super Lʽˑ/ʼᐧ;
.source "SourceFile"


# static fields
.field public static final ﾞʻ:Lʽˑ/ˉˆ;


# instance fields
.field public final ʼˎ:Ljava/util/List;

.field public final ˆʾ:Ljava/util/Map;

.field public final ˈ:Ljava/util/List;

.field public final ˑﹳ:Ljava/util/List;

.field public final ٴﹶ:Ljava/util/List;

.field public final ᵎﹶ:Ljava/util/List;

.field public final ᵔᵢ:Lʽⁱ/ﹳᐧ;

.field public final ﾞᴵ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lʽˑ/ˉˆ;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v10, 0x0

    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v1, ""

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v9, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lʽˑ/ˉˆ;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lʽⁱ/ﹳᐧ;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    sput-object v0, Lʽˑ/ˉˆ;->ﾞʻ:Lʽˑ/ˉˆ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lʽⁱ/ﹳᐧ;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2, p10}, Lʽˑ/ʼᐧ;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p10

    if-ge p2, p10, :cond_1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Lʽˑ/ᵔʾ;

    iget-object p10, p10, Lʽˑ/ᵔʾ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {p1, p10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p4, p1}, Lʽˑ/ˉˆ;->ⁱˊ(Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-static {p5, p1}, Lʽˑ/ˉˆ;->ⁱˊ(Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-static {p6, p1}, Lʽˑ/ˉˆ;->ⁱˊ(Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-static {p7, p1}, Lʽˑ/ˉˆ;->ⁱˊ(Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ˉˆ;->ˈ:Ljava/util/List;

    invoke-static {p3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ˉˆ;->ˑﹳ:Ljava/util/List;

    invoke-static {p4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    invoke-static {p5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ˉˆ;->ﾞᴵ:Ljava/util/List;

    invoke-static {p6}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ˉˆ;->ᵎﹶ:Ljava/util/List;

    invoke-static {p7}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    iput-object p8, p0, Lʽˑ/ˉˆ;->ᵔᵢ:Lʽⁱ/ﹳᐧ;

    if-eqz p9, :cond_2

    invoke-static {p9}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lʽˑ/ˉˆ;->ʼˎ:Ljava/util/List;

    invoke-static {p11}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ˉˆ;->ˆʾ:Ljava/util/Map;

    invoke-static {p12}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ˉˆ;->ٴﹶ:Ljava/util/List;

    return-void
.end method

.method public static ʽ(Ljava/util/List;ILjava/util/List;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move v4, v1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʽⁱ/ˈʿ;

    iget v6, v5, Lʽⁱ/ˈʿ;->ᴵˊ:I

    if-ne v6, p1, :cond_0

    iget v5, v5, Lʽⁱ/ˈʿ;->ʽʽ:I

    if-ne v5, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static ⁱˊ(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽˑ/ˉʿ;

    iget-object v1, v1, Lʽˑ/ˉʿ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/util/List;)Ljava/lang/Object;
    .locals 13

    new-instance v0, Lʽˑ/ˉˆ;

    iget-object v1, p0, Lʽˑ/ˉˆ;->ˑﹳ:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lʽˑ/ˉˆ;->ʽ(Ljava/util/List;ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v1, p0, Lʽˑ/ˉˆ;->ﾞᴵ:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Lʽˑ/ˉˆ;->ʽ(Ljava/util/List;ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v1, p0, Lʽˑ/ˉˆ;->ᵎﹶ:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Lʽˑ/ˉˆ;->ʽ(Ljava/util/List;ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v11, p0, Lʽˑ/ˉˆ;->ˆʾ:Ljava/util/Map;

    iget-object v12, p0, Lʽˑ/ˉˆ;->ٴﹶ:Ljava/util/List;

    iget-object v1, p0, Lʽˑ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v2, p0, Lʽˑ/ʼᐧ;->ⁱˊ:Ljava/util/List;

    iget-object v8, p0, Lʽˑ/ˉˆ;->ᵔᵢ:Lʽⁱ/ﹳᐧ;

    iget-object v9, p0, Lʽˑ/ˉˆ;->ʼˎ:Ljava/util/List;

    iget-boolean v10, p0, Lʽˑ/ʼᐧ;->ʽ:Z

    move-object v7, v4

    invoke-direct/range {v0 .. v12}, Lʽˑ/ˉˆ;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lʽⁱ/ﹳᐧ;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v0
.end method

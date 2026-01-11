.class public Lʽⁱ/ᴵˑ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lʼʻ/ᵎⁱ;

.field public ʼᐧ:Lʼʻ/ᵎⁱ;

.field public ʽ:I

.field public ʽﹳ:Ljava/util/HashSet;

.field public ˆʾ:Lʼʻ/ᵎⁱ;

.field public ˈ:I

.field public ˉʿ:I

.field public ˉˆ:Lʽⁱ/ˈⁱ;

.field public ˏי:Ljava/util/HashMap;

.field public ˑﹳ:I

.field public יـ:Z

.field public ٴﹶ:Lʼʻ/ᵎⁱ;

.field public ᵎﹶ:Z

.field public ᵔʾ:Lʼʻ/ᵎⁱ;

.field public ᵔᵢ:Z

.field public ᵔﹳ:Z

.field public ⁱˊ:I

.field public ﹳٴ:I

.field public ﹳᐧ:I

.field public ﾞʻ:I

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lʽⁱ/ᴵˑ;->ﹳٴ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ⁱˊ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ʽ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ˈ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ˑﹳ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ﾞᴵ:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lʽⁱ/ᴵˑ;->ᵎﹶ:Z

    iput-boolean v1, p0, Lʽⁱ/ᴵˑ;->ᵔᵢ:Z

    sget-object v2, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iput-object v2, p0, Lʽⁱ/ᴵˑ;->ʼˎ:Lʼʻ/ᵎⁱ;

    iput-object v2, p0, Lʽⁱ/ᴵˑ;->ˆʾ:Lʼʻ/ᵎⁱ;

    iput-object v2, p0, Lʽⁱ/ᴵˑ;->ٴﹶ:Lʼʻ/ᵎⁱ;

    iput v0, p0, Lʽⁱ/ᴵˑ;->ﾞʻ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ˉʿ:I

    iput-object v2, p0, Lʽⁱ/ᴵˑ;->ᵔʾ:Lʼʻ/ᵎⁱ;

    sget-object v0, Lʽⁱ/ˈⁱ;->ﹳٴ:Lʽⁱ/ˈⁱ;

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ˉˆ:Lʽⁱ/ˈⁱ;

    iput-object v2, p0, Lʽⁱ/ᴵˑ;->ʼᐧ:Lʼʻ/ᵎⁱ;

    iput-boolean v1, p0, Lʽⁱ/ᴵˑ;->ᵔﹳ:Z

    const/4 v0, 0x0

    iput v0, p0, Lʽⁱ/ᴵˑ;->ﹳᐧ:I

    iput-boolean v0, p0, Lʽⁱ/ᴵˑ;->יـ:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ˏי:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ʽﹳ:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public ʼˎ(IZ)Lʽⁱ/ᴵˑ;
    .locals 0

    .prologue
    if-eqz p2, :cond_0

    iget-object p2, p0, Lʽⁱ/ᴵˑ;->ʽﹳ:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    iget-object p2, p0, Lʽⁱ/ᴵˑ;->ʽﹳ:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final ʽ(Lʽⁱ/ˉـ;)V
    .locals 2

    iget v0, p1, Lʽⁱ/ˉـ;->ﹳٴ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ﹳٴ:I

    iget v0, p1, Lʽⁱ/ˉـ;->ⁱˊ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ⁱˊ:I

    iget v0, p1, Lʽⁱ/ˉـ;->ʽ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ʽ:I

    iget v0, p1, Lʽⁱ/ˉـ;->ˈ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ˈ:I

    iget v0, p1, Lʽⁱ/ˉـ;->ˑﹳ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ˑﹳ:I

    iget v0, p1, Lʽⁱ/ˉـ;->ﾞᴵ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ﾞᴵ:I

    iget-boolean v0, p1, Lʽⁱ/ˉـ;->ᵎﹶ:Z

    iput-boolean v0, p0, Lʽⁱ/ᴵˑ;->ᵎﹶ:Z

    iget-boolean v0, p1, Lʽⁱ/ˉـ;->ᵔᵢ:Z

    iput-boolean v0, p0, Lʽⁱ/ᴵˑ;->ᵔᵢ:Z

    iget-object v0, p1, Lʽⁱ/ˉـ;->ʼˎ:Lʼʻ/ᵎⁱ;

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ʼˎ:Lʼʻ/ᵎⁱ;

    iget-object v0, p1, Lʽⁱ/ˉـ;->ˆʾ:Lʼʻ/ᵎⁱ;

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ˆʾ:Lʼʻ/ᵎⁱ;

    iget-object v0, p1, Lʽⁱ/ˉـ;->ٴﹶ:Lʼʻ/ᵎⁱ;

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ٴﹶ:Lʼʻ/ᵎⁱ;

    iget v0, p1, Lʽⁱ/ˉـ;->ﾞʻ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ﾞʻ:I

    iget v0, p1, Lʽⁱ/ˉـ;->ˉʿ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ˉʿ:I

    iget-object v0, p1, Lʽⁱ/ˉـ;->ᵔʾ:Lʼʻ/ᵎⁱ;

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ᵔʾ:Lʼʻ/ᵎⁱ;

    iget-object v0, p1, Lʽⁱ/ˉـ;->ˉˆ:Lʽⁱ/ˈⁱ;

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ˉˆ:Lʽⁱ/ˈⁱ;

    iget-object v0, p1, Lʽⁱ/ˉـ;->ʼᐧ:Lʼʻ/ᵎⁱ;

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ʼᐧ:Lʼʻ/ᵎⁱ;

    iget-boolean v0, p1, Lʽⁱ/ˉـ;->ᵔﹳ:Z

    iput-boolean v0, p0, Lʽⁱ/ᴵˑ;->ᵔﹳ:Z

    iget v0, p1, Lʽⁱ/ˉـ;->ﹳᐧ:I

    iput v0, p0, Lʽⁱ/ᴵˑ;->ﹳᐧ:I

    iget-boolean v0, p1, Lʽⁱ/ˉـ;->יـ:Z

    iput-boolean v0, p0, Lʽⁱ/ᴵˑ;->יـ:Z

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lʽⁱ/ˉـ;->ʽﹳ:Lʼʻ/ᵔٴ;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ʽﹳ:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lʽⁱ/ˉـ;->ˏי:Lʼʻ/ᵔי;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lʽⁱ/ᴵˑ;->ˏי:Ljava/util/HashMap;

    return-void
.end method

.method public ˈ()Lʽⁱ/ᴵˑ;
    .locals 1

    const/4 v0, -0x3

    iput v0, p0, Lʽⁱ/ᴵˑ;->ﹳᐧ:I

    return-object p0
.end method

.method public ˑﹳ(Lʽⁱ/ﹳـ;)Lʽⁱ/ᴵˑ;
    .locals 2

    iget-object v0, p1, Lʽⁱ/ﹳـ;->ﹳٴ:Lʽⁱ/ـˏ;

    iget v1, v0, Lʽⁱ/ـˏ;->ʽ:I

    invoke-virtual {p0, v1}, Lʽⁱ/ᴵˑ;->ⁱˊ(I)Lʽⁱ/ᴵˑ;

    iget-object v1, p0, Lʽⁱ/ᴵˑ;->ˏי:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs ᵎﹶ([Ljava/lang/String;)Lʽⁱ/ᴵˑ;
    .locals 5

    .prologue
    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lᐧˎ/ʼʼ;->ـˏ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object p1

    iput-object p1, p0, Lʽⁱ/ᴵˑ;->ʼᐧ:Lʼʻ/ᵎⁱ;

    iput-boolean v2, p0, Lʽⁱ/ᴵˑ;->ᵔﹳ:Z

    return-object p0
.end method

.method public ᵔᵢ()Lʽⁱ/ᴵˑ;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʽⁱ/ᴵˑ;->ᵔﹳ:Z

    return-object p0
.end method

.method public ⁱˊ(I)Lʽⁱ/ᴵˑ;
    .locals 2

    .prologue
    iget-object v0, p0, Lʽⁱ/ᴵˑ;->ˏי:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽⁱ/ﹳـ;

    iget-object v1, v1, Lʽⁱ/ﹳـ;->ﹳٴ:Lʽⁱ/ـˏ;

    iget v1, v1, Lʽⁱ/ـˏ;->ʽ:I

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public ﹳٴ()Lʽⁱ/ˉـ;
    .locals 1

    new-instance v0, Lʽⁱ/ˉـ;

    invoke-direct {v0, p0}, Lʽⁱ/ˉـ;-><init>(Lʽⁱ/ᴵˑ;)V

    return-object v0
.end method

.method public ﾞᴵ()Lʽⁱ/ᴵˑ;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lʽⁱ/ᴵˑ;->ᵎﹶ([Ljava/lang/String;)Lʽⁱ/ᴵˑ;

    move-result-object v0

    return-object v0
.end method

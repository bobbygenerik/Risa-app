.class public final Lᴵᵔ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public ʽʽ:Z

.field public ʾˋ:Lᴵᵔ/ﾞᴵ;

.field public ˈٴ:Ljava/util/ArrayList;

.field public ˉٴ:J

.field public ˊʻ:Lᴵᵔ/ٴﹶ;

.field public ٴʼ:J

.field public ٴᵢ:Z

.field public ᴵˊ:Ljava/util/ArrayList;

.field public ᴵᵔ:Ljava/util/ArrayList;

.field public ᵎⁱ:J


# direct methods
.method public constructor <init>(Lᴵᵔ/ﾞᴵ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lᴵᵔ/ٴﹶ;->ʽʽ:Z

    iput-object v0, p0, Lᴵᵔ/ٴﹶ;->ˊʻ:Lᴵᵔ/ٴﹶ;

    iput-boolean v1, p0, Lᴵᵔ/ٴﹶ;->ٴᵢ:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    iput-wide v0, p0, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    iput-wide v0, p0, Lᴵᵔ/ٴﹶ;->ٴʼ:J

    iput-object p1, p0, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lᴵᵔ/ٴﹶ;->ˈ()Lᴵᵔ/ٴﹶ;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ()Lᴵᵔ/ٴﹶ;
    .locals 3

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ٴﹶ;

    iget-object v1, p0, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v1}, Lᴵᵔ/ﾞᴵ;->ﾞᴵ()Lᴵᵔ/ﾞᴵ;

    move-result-object v1

    iput-object v1, v0, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    iget-object v1, p0, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Lᴵᵔ/ٴﹶ;->ʽʽ:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final ⁱˊ(Lᴵᵔ/ٴﹶ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lᴵᵔ/ٴﹶ;->ˈٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lᴵᵔ/ٴﹶ;->ⁱˊ(Lᴵᵔ/ٴﹶ;)V

    :cond_1
    return-void
.end method

.method public final ﹳٴ(Lᴵᵔ/ٴﹶ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lᴵᵔ/ٴﹶ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p1, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lᴵᵔ/ٴﹶ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lᴵᵔ/ٴﹶ;->ﹳٴ(Lᴵᵔ/ٴﹶ;)V

    :cond_2
    return-void
.end method

.class public abstract Lᴵᵔ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public ʽʽ:Ljava/util/ArrayList;

.field public ʾˋ:Ljava/util/ArrayList;

.field public ᴵˊ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    iput-object v0, p0, Lᴵᵔ/ﾞᴵ;->ᴵˊ:Ljava/util/ArrayList;

    iput-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    return-void
.end method

.method public static ⁱˊ(Lᴵᵔ/ﹳٴ;)V
    .locals 3

    .prologue
    invoke-static {}, Lᴵᵔ/ʽ;->ﹳٴ()Lᴵᵔ/ʽ;

    move-result-object v0

    iget-object v1, v0, Lᴵᵔ/ʽ;->ﹳٴ:Lᴵᵔ/ⁱˊ;

    iget-object v0, v0, Lᴵᵔ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract ʼˎ()J
.end method

.method public abstract ʼᐧ(Lᴵᵔ/ʼᐧ;)V
.end method

.method public abstract ˆʾ()Z
.end method

.method public final ˈ(Lᴵᵔ/ˈ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract ˉʿ()V
.end method

.method public abstract ˏי(Z)V
.end method

.method public final ˑﹳ(Lᴵᵔ/ˑﹳ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract יـ()V
.end method

.method public abstract ٴﹶ()Z
.end method

.method public abstract ᵔʾ(J)Lᴵᵔ/ﾞᴵ;
.end method

.method public abstract ᵔᵢ()V
.end method

.method public abstract ᵔﹳ(Z)V
.end method

.method public abstract ﾞʻ(J)Z
.end method

.method public ﾞᴵ()Lᴵᵔ/ﾞᴵ;
    .locals 3

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ﾞᴵ;

    iget-object v1, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lᴵᵔ/ﾞᴵ;->ᴵˊ:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lᴵᵔ/ﾞᴵ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lᴵᵔ/ﾞᴵ;->ᴵˊ:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

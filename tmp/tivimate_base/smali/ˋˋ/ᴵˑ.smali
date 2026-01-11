.class public abstract Lˋˋ/ᴵˑ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ⁱˊ:Z

.field public final ﹳٴ:Lˋˋ/ˉـ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˋˋ/ˉـ;

    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    iput-object v0, p0, Lˋˋ/ᴵˑ;->ﹳٴ:Lˋˋ/ˉـ;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˋˋ/ᴵˑ;->ⁱˊ:Z

    const/4 v0, 0x1

    iput v0, p0, Lˋˋ/ᴵˑ;->ʽ:I

    return-void
.end method


# virtual methods
.method public ʼˎ(Lˋˋ/ʼـ;)V
    .locals 0

    return-void
.end method

.method public ʽ(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ˆʾ(Lˋˋ/ʼـ;)V
    .locals 0

    return-void
.end method

.method public final ˈ()V
    .locals 1

    iget-object v0, p0, Lˋˋ/ᴵˑ;->ﹳٴ:Lˋˋ/ˉـ;

    invoke-virtual {v0}, Lˋˋ/ˉـ;->ⁱˊ()V

    return-void
.end method

.method public final ˉʿ()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lˋˋ/ᴵˑ;->ʽ:I

    iget-object v0, p0, Lˋˋ/ᴵˑ;->ﹳٴ:Lˋˋ/ˉـ;

    invoke-virtual {v0}, Lˋˋ/ˉـ;->ᵎﹶ()V

    return-void
.end method

.method public final ˑﹳ(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lˋˋ/ᴵˑ;->ﹳٴ:Lˋˋ/ˉـ;

    invoke-virtual {v0, p1, p2, p3}, Lˋˋ/ˉـ;->ˈ(IILjava/lang/Object;)V

    return-void
.end method

.method public ٴﹶ(Lˋˋ/ʼـ;)V
    .locals 0

    return-void
.end method

.method public ᵎﹶ(Lˋˋ/ʼـ;ILjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lˋˋ/ᴵˑ;->ﾞᴵ(Lˋˋ/ʼـ;I)V

    return-void
.end method

.method public abstract ᵔᵢ(Landroid/view/ViewGroup;I)Lˋˋ/ʼـ;
.end method

.method public ⁱˊ(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract ﹳٴ()I
.end method

.method public final ﾞʻ(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ᴵˑ;->ﹳٴ:Lˋˋ/ˉـ;

    invoke-virtual {v0}, Lˋˋ/ˉـ;->ﹳٴ()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lˋˋ/ᴵˑ;->ⁱˊ:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract ﾞᴵ(Lˋˋ/ʼـ;I)V
.end method

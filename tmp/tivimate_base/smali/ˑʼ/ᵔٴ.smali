.class public final Lˑʼ/ᵔٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lˊʼ/ʼˎ;

.field public final synthetic ˈ:Lˑʼ/ʿ;

.field public final ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public ﹳٴ:Z


# direct methods
.method public constructor <init>(Lˑʼ/ʿ;)V
    .locals 0

    iput-object p1, p0, Lˑʼ/ᵔٴ;->ˈ:Lˑʼ/ʿ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˑʼ/ᵔٴ;->ﹳٴ:Z

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lˑʼ/ᵔٴ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    iget-object v2, p0, Lˑʼ/ᵔٴ;->ˈ:Lˑʼ/ʿ;

    const-string v3, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelBackStackTransition for transition "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_1
    iget-object v0, v2, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, v0, Lˑʼ/ﹳٴ;->יـ:Z

    invoke-virtual {v0}, Lˑʼ/ﹳٴ;->ˑﹳ()V

    iget-object v0, v2, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    new-instance v3, Landroidx/lifecycle/ᵎⁱ;

    const/16 v4, 0x1a

    invoke-direct {v3, v4, v2}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    iget-object v4, v0, Lˑʼ/ﹳٴ;->ᵔﹳ:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lˑʼ/ﹳٴ;->ᵔﹳ:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, v0, Lˑʼ/ﹳٴ;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-virtual {v0}, Lˑʼ/ﹳٴ;->ﾞᴵ()V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lˑʼ/ʿ;->ʼˎ:Z

    invoke-virtual {v2, v0}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    invoke-virtual {v2}, Lˑʼ/ʿ;->ˊʻ()V

    iput-boolean v1, v2, Lˑʼ/ʿ;->ʼˎ:Z

    const/4 v0, 0x0

    iput-object v0, v2, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    :cond_3
    return-void
.end method

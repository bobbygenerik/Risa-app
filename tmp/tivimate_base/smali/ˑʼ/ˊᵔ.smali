.class public abstract Lˑʼ/ˊᵔ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lˑʼ/ˑʼ;

.field public static final ﹳٴ:Lˑʼ/ﹳﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lˑʼ/ﹳﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˑʼ/ˊᵔ;->ﹳٴ:Lˑʼ/ﹳﹳ;

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lˑʿ/ˉʿ;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ˑʼ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    sput-object v0, Lˑʼ/ˊᵔ;->ⁱˊ:Lˑʼ/ˑʼ;

    return-void
.end method

.method public static final ﹳٴ(ILjava/util/ArrayList;)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

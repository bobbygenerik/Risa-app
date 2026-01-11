.class public final Lˑʿ/ʾᵎ;
.super Lˑʿ/ـˆ;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Lˑʿ/ʼʼ;

.field public final synthetic ﹳٴ:Lיـ/ˑﹳ;


# direct methods
.method public constructor <init>(Lˑʿ/ʼʼ;Lיـ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʿ/ʾᵎ;->ⁱˊ:Lˑʿ/ʼʼ;

    iput-object p2, p0, Lˑʿ/ʾᵎ;->ﹳٴ:Lיـ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final ˑﹳ(Lˑʿ/ʻٴ;)V
    .locals 2

    iget-object v0, p0, Lˑʿ/ʾᵎ;->ⁱˊ:Lˑʿ/ʼʼ;

    iget-object v0, v0, Lˑʿ/ʼʼ;->ᴵˊ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lˑʿ/ʾᵎ;->ﹳٴ:Lיـ/ˑﹳ;

    invoke-virtual {v1, v0}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lˑʿ/ʻٴ;->ˉٴ(Lˑʿ/יـ;)Lˑʿ/ʻٴ;

    return-void
.end method

.class public final Landroidx/leanback/widget/ᵎˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/leanback/widget/ˎᐧ;


# instance fields
.field public final synthetic ﹳٴ:Landroidx/leanback/widget/ˑٴ;


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/ˑٴ;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ᵎˊ;->ﹳٴ:Landroidx/leanback/widget/ˑٴ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ﹳٴ(Lˋˋ/ʼـ;)V
    .locals 3

    .prologue
    check-cast p1, Landroidx/leanback/widget/ˈʿ;

    iget-object v0, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {v0}, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ()Z

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/ᵎˊ;->ﹳٴ:Landroidx/leanback/widget/ˑٴ;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1, v2, v2}, Landroidx/leanback/widget/ˑٴ;->ᵎﹶ(Landroidx/leanback/widget/ˈʿ;ZZ)V

    return-void

    :cond_0
    invoke-virtual {v1, p1, v2}, Landroidx/leanback/widget/ˑٴ;->ᵔᵢ(Landroidx/leanback/widget/ˈʿ;Z)V

    return-void
.end method

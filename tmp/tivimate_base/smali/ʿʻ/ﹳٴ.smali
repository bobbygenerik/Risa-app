.class public final synthetic Lʿʻ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/יـ;


# instance fields
.field public final synthetic ʾˋ:Lʿʻ/ⁱˊ;


# direct methods
.method public synthetic constructor <init>(Lʿʻ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿʻ/ﹳٴ;->ʾˋ:Lʿʻ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V
    .locals 1

    .prologue
    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    iget-object v0, p0, Lʿʻ/ﹳٴ;->ʾˋ:Lʿʻ/ⁱˊ;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v0, Lʿʻ/ⁱˊ;->ᵔᵢ:Z

    return-void

    :cond_0
    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, v0, Lʿʻ/ⁱˊ;->ᵔᵢ:Z

    :cond_1
    return-void
.end method

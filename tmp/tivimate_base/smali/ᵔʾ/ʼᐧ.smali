.class public final Lᵔʾ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final ʾˋ:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public final synthetic ᴵˊ:Lᵔʾ/ᵔﹳ;


# direct methods
.method public constructor <init>(Lᵔʾ/ᵔﹳ;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔʾ/ʼᐧ;->ᴵˊ:Lᵔʾ/ᵔﹳ;

    iput-object p2, p0, Lᵔʾ/ʼᐧ;->ʾˋ:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʼᐧ;->ᴵˊ:Lᵔʾ/ᵔﹳ;

    invoke-virtual {v0, p1}, Lיٴ/ˉʿ;->ᵔᵢ(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lᵔʾ/ʼᐧ;->ʾˋ:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

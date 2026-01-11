.class public final Lʻᐧ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic ʾˋ:Lʻᐧ/ᵔᵢ;


# direct methods
.method public constructor <init>(Lʻᐧ/ᵔᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻᐧ/ᵎﹶ;->ʾˋ:Lʻᐧ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lʻᐧ/ᵎﹶ;->ʾˋ:Lʻᐧ/ᵔᵢ;

    iput p2, v0, Lʻᐧ/ᵔᵢ;->ˋـ:I

    const/4 p2, -0x1

    iput p2, v0, Lʻᐧ/ʼᐧ;->ᵢˋ:I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

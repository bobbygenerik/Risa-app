.class public final Lﹶ/ˈ;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lﹶ/ˑﹳ;

.field public final ⁱˊ:Landroid/net/Uri;

.field public final ﹳٴ:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lﹶ/ˑﹳ;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lﹶ/ˈ;->ʽ:Lﹶ/ˑﹳ;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lﹶ/ˈ;->ﹳٴ:Landroid/content/ContentResolver;

    iput-object p4, p0, Lﹶ/ˈ;->ⁱˊ:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lﹶ/ˈ;->ʽ:Lﹶ/ˑﹳ;

    iget-object v0, p1, Lﹶ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    iget-object v1, p1, Lﹶ/ˑﹳ;->ʼˎ:Lʽⁱ/ˑﹳ;

    iget-object v2, p1, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    invoke-static {v0, v1, v2}, Lﹶ/ⁱˊ;->ʽ(Landroid/content/Context;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)Lﹶ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lﹶ/ˑﹳ;->ﹳٴ(Lﹶ/ⁱˊ;)V

    return-void
.end method

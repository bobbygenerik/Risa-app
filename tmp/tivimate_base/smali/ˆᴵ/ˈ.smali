.class public final Lˆᴵ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ᵔﹳ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Class;

.field public final ﹳٴ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆᴵ/ˈ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lˆᴵ/ˈ;->ⁱˊ:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lⁱʼ/ʻٴ;)Lⁱʼ/ʼᐧ;
    .locals 4

    new-instance v0, Lˆᴵ/ﾞᴵ;

    const-class v1, Ljava/io/File;

    iget-object v2, p0, Lˆᴵ/ˈ;->ⁱˊ:Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Lⁱʼ/ʻٴ;->ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;

    move-result-object v1

    const-class v3, Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Lⁱʼ/ʻٴ;->ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;

    move-result-object p1

    iget-object v3, p0, Lˆᴵ/ˈ;->ﹳٴ:Landroid/content/Context;

    invoke-direct {v0, v3, v1, p1, v2}, Lˆᴵ/ﾞᴵ;-><init>(Landroid/content/Context;Lⁱʼ/ʼᐧ;Lⁱʼ/ʼᐧ;Ljava/lang/Class;)V

    return-object v0
.end method

.class public final Lˉˆ/ˋˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˉˆ/ˋˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    iget v0, p0, Lˉˆ/ˋˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Lʻˈ/ﹳᐧ;

    invoke-direct {v0}, Lʻˈ/ﹳᐧ;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lʻˈ/ﹳᐧ;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "VdcInflateDelegate"

    const-string p3, "Exception while inflating <vector>"

    nop

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lʻˈ/ﾞᴵ;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lʻˈ/ﾞᴵ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0, p2, p3, p4}, Lʻˈ/ﾞᴵ;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "AvdcInflateDelegate"

    const-string p3, "Exception while inflating <animated-vector>"

    nop

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0, p2, p3, p4}, Lˆʾ/ˑﹳ;->ʽ(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lˆʾ/ˑﹳ;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    const-string p2, "AsldcInflateDelegate"

    const-string p3, "Exception while inflating <animated-selector>"

    nop

    const/4 p1, 0x0

    :goto_2
    return-object p1

    :pswitch_2
    invoke-interface {p3}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_3
    const-class v2, Lˉˆ/ˋˊ;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v0, p1, p2, p3, p4}, Lٴﹶ/ﹳٴ;->ʽ(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v0

    goto :goto_3

    :catch_3
    move-exception p1

    const-string p2, "DrawableDelegate"

    const-string p3, "Exception while inflating <drawable>"

    nop

    :cond_0
    :goto_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
